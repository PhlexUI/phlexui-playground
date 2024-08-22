# frozen_string_literal: true

module RBUI
  class FormLabel < Base
    def view_template(&)
      label(**attrs, &)
    end

    private

    def default_attrs
      { class: "text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70" }
    end
  end
end
