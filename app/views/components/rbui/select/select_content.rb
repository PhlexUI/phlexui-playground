# frozen_string_literal: true

module RBUI
  class SelectContent < Base
    def initialize(**attrs)
      @id = "content#{SecureRandom.hex(4)}"
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        id: @id,
        role: "listbox",
        tabindex: "-1",
        data: {
          rbui__select_target: "content"
        },
        class: "hidden w-full absolute top-0 left-0 z-50 z-50 max-h-96 min-w-[8rem] overflow-hidden rounded-md border bg-background p-1 text-foreground shadow-md data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2"
      }
    end
  end
end
