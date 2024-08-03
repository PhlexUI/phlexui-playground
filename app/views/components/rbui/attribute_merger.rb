# frozen_string_literal: true

module RBUI
  class AttributeMerger
    attr_reader :default_attrs, :user_attrs
    OVERRIDE_KEY = "!"

    def initialize(default_attrs, user_attrs)
      @default_attrs = flatten_hash(default_attrs)
      @user_attrs = flatten_hash(user_attrs)
    end

    def call
      merged_attrs = merge_hashes(default_attrs, non_override_attrs)
      mix(merged_attrs, override_attrs)
    end

    private

    # @return [Hash]
    def mix(*args)
      args.each_with_object({}) do |object, result|
        result.merge!(object) do |_key, old, new|
          case new
          when Hash
            old.is_a?(Hash) ? mix(old, new) : new
          when Array
            old.is_a?(Array) ? (old + new) : new
          when String
            old.is_a?(String) ? "#{old} #{new}" : new
          else
            new
          end
        end

        result.transform_keys! { |key| key.end_with?("!") ? key.name.chop.to_sym : key }
      end
    end

    def override_attrs
      user_attrs.select { |key, _| key.to_s.include?(OVERRIDE_KEY) }
    end

    def non_override_attrs
      user_attrs.reject { |key, _| key.to_s.include?(OVERRIDE_KEY) }
    end

    def flatten_hash(hash, parent_key = "", result_hash = {})
      hash.each do |key, value|
        new_key = parent_key.empty? ? key : :"#{parent_key}_#{key}"
        if value.is_a?(Hash)
          flatten_hash(value, new_key, result_hash)
        else
          result_hash[new_key] = value
        end
      end
      result_hash
    end

    def merge_hashes(hash1, hash2)
      flat_hash1 = flatten_hash(hash1)
      flat_hash2 = flatten_hash(hash2)

      flat_hash1.merge(flat_hash2) { |_, oldval, newval| "#{oldval} #{newval}" }
    end
  end
end
