# frozen_string_literal: true

module RBUI
  class ComboboxList < Base
    def initialize(**attrs)
      @id = "list#{SecureRandom.hex(4)}"
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        id: @id,
        data: {
          rbui__combobox_target: "list"
        },
        role: "listbox",
        tabindex: "-1",
        class: "max-h-[300px] overflow-y-auto overflow-x-hidden"
      }
    end
  end
end
