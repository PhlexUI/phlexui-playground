# frozen_string_literal: true

module Phlex
  class Form < ApplicationView
    def view_template
      div(class: "h-screen flex items-center justify-center") do
        div(class: "w-96") do
          Form do
            FormField do
              FormLabel { "Name" }
              Input(placeholder: "Joel Drapper", required: true, minlength: "3") { "Joel Drapper" }
              FormDescription()
              FormMessage()
            end

            FormField do
              FormLabel { "Email" }
              Input(placeholder: "joel@drapper.me", required: true, data_value_missing: "Custom error message")
              FormDescription()
              FormMessage()
            end

            Button(type: "submit") { "Save" }
          end
        end
      end
    end
  end
end
