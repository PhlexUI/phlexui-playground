# frozen_string_literal: true

module Phlex
  class Combobox < ApplicationView
    def view_template
      div(class: "h-screen flex items-center justify-center") do
        div(class: "w-96") do
          Combobox do
            ComboboxInput()
            ComboboxTrigger do
              ComboboxValue(placeholder: "Select event...")
            end
            ComboboxContent do
              ComboboxSearchInput(placeholder: "Search event...")
              ComboboxList do
                ComboboxEmpty { "No results found." }
                ComboboxGroup(heading: "Suggestions") do
                  ComboboxItem(value: "railsworld") do
                    span { "Rails World" }
                  end
                  ComboboxItem(value: "tropicalrb") do
                    span { "Tropical.rb" }
                  end
                  ComboboxItem(value: "friendly.rb") do
                    span { "Friendly.rb" }
                  end
                end

                ComboboxSeparator()

                ComboboxGroup(heading: "Others") do
                  ComboboxItem(value: "railsconf") do
                    span { "RailsConf" }
                  end
                  ComboboxItem(value: "euruko") do
                    span { "Euruko" }
                  end
                  ComboboxItem(value: "rubykaigi") do
                    span { "RubyKaigi" }
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
