# frozen_string_literal: true

module RBUI
  class FormField < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "rbui--form-field",
          rbui__form_field_dirty_value: "false"
        },
        class: "space-y-2"
      }
    end
  end
end
