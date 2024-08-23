# frozen_string_literal: true

module Phlex
  class Form < ApplicationView
    def view_template
      div(class: "h-screen flex items-center justify-center") do
        div(class: "w-96") do
          Form do
            FormField do
              FormFieldLabel { "Name" }
              Input(placeholder: "Joel Drapper", required: true, minlength: "3") { "Joel Drapper" }
              FormFieldHint()
              FormFieldError()
            end

            FormField do
              FormFieldLabel { "Email" }
              Input(placeholder: "joel@drapper.me", required: true, data_value_missing: "Custom error message")
              FormFieldHint()
              FormFieldError()
            end

            Button(type: "submit") { "Save" }
          end
        end
      end
    end
  end
end
