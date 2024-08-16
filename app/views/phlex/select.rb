# frozen_string_literal: true

module Phlex
  class Select < ApplicationView
    def view_template
      div(class: "h-screen flex items-center justify-center") do
        div(class: "w-96") do
          Select do
            SelectInput()
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
                SelectItem(value: "watermelon_0") { "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer" }
                SelectItem(value: "watermelon_1") { "LoremIpsumhasbeentheindustrysstandarddummytexteversincethe1500swhenanunknownprinter" }
                SelectItem(value: "watermelon_2") { "Watermelon_2" }
                SelectItem(value: "watermelon_3") { "Watermelon_3" }
                SelectItem(value: "watermelon_4") { "Watermelon_4" }
                SelectItem(value: "watermelon_5") { "Watermelon_5" }
                SelectItem(value: "watermelon_6") { "Watermelon_6" }
                SelectItem(value: "watermelon_7") { "Watermelon_7" }
                SelectItem(value: "watermelon_8") { "Watermelon_8" }
                SelectItem(value: "watermelon_9") { "Watermelon_9" }
              end
            end
          end
        end
      end
    end
  end
end
