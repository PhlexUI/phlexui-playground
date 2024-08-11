# frozen_string_literal: true

module RBUI
  class SelectContent < Base
    def initialize(**attrs)
      @id = "content#{SecureRandom.hex(4)}"
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        div(
          class: "z-50 z-50 max-h-96 min-w-[8rem] overflow-hidden rounded-md border bg-background p-1 text-foreground shadow-md animate-out group-data-[rbui--select-open-value=true]/select:animate-in fade-out-0 group-data-[rbui--select-open-value=true]/select:fade-in-0 zoom-out-95 group-data-[rbui--select-open-value=true]/select:zoom-in-95 slide-in-from-top-2", &block
        )
        # group-data-[rbui--tooltip-placement-value=bottom]
      end
    end

    private

    def default_attrs
      {
        id: @id,
        role: "listbox",
        tabindex: "-1",
        data: {
          rbui__select_target: "content",
        },
        class: "hidden w-full absolute top-0 left-0"
      }
    end
  end
end
