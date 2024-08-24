# frozen_string_literal: true

module Phlex
  class Form < ApplicationView
    def view_template
      div(class: "h-screen flex items-center justify-center") do
        div(class: "w-96") do
          Form(class: "w-2/3 space-y-6") do
            FormField do
              FormFieldLabel { "Default error" }
              Input(placeholder: "Joel Drapper", required: true, minlength: "3") { "Joel Drapper" }
              FormFieldHint()
              FormFieldError()
            end

            FormField do
              FormFieldLabel { "Custom error message" }
              Input(placeholder: "joel@drapper.me", required: true, data_value_missing: "Custom error message")
              FormFieldError()
            end

            FormField do
              FormFieldLabel { "Backend error" }
              Input(placeholder: "Joel Drapper", required: true)
              FormFieldError { "Error from backend" }
            end

            FormField do
              Checkbox(required: true)

                label(
                  class:
                    "text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                ) { " Accept terms and conditions " }

              FormFieldError()
            end

            FormField do
              FormFieldLabel { "Select" }
              Select do
                SelectInput(required: true)
                SelectTrigger do
                  SelectValue(placeholder: "Select a fruit")
                end
                SelectContent() do
                  SelectGroup do
                    SelectLabel { "Fruits" }
                    SelectItem(value: "apple") { "Apple" }
                    SelectItem(value: "orange") { "Orange" }
                    SelectItem(value: "banana") { "Banana" }
                    SelectItem(value: "watermelon") { "Watermelon" }
                  end
                end
              end
              FormFieldError()
            end

            FormField do
              FormFieldLabel { "Combobox" }
              Combobox do
                ComboboxInput(required: true)
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
              FormFieldError()
            end

            Button(type: "submit") { "Save" }
          end
        end
      end
    end
  end
end
