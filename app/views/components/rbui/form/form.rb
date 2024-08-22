# frozen_string_literal: true

module RBUI
  class Form < Base
    def view_template(&)
      form(**attrs, &)
    end

    private

    def default_attrs
      {
        novalidate: true,
        data: {
          controller: "rbui--form",
          action: "rbui--form#onSubmit",
          rbui__form_rbui__form_field_outlet: ".rbui--form-field"
        }
      }
    end
  end
end
