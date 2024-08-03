# frozen_string_literal: true

module RBUI
  class SelectTrigger < Base
    def view_template(&block)
      button(**attrs) do
        block&.call
        icon
      end
    end

    private

    def icon
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        viewbox: "0 0 24 24",
        fill: "none",
        stroke: "currentColor",
        class: "ml-2 h-4 w-4 shrink-0 opacity-50",
        stroke_width: "2",
        stroke_linecap: "round",
        stroke_linejoin: "round"
      ) do |s|
        s.path(
          d: "m7 15 5 5 5-5",
        )
        s.path(
          d: "m7 9 5-5 5 5",
        )
      end
    end

    def default_attrs
      {
        data: {
          action: "rbui--select#onClick",
          rbui__select_target: "trigger"
        },
        type: "button",
        class:
          "w-full flex h-9 items-center justify-between whitespace-nowrap rounded-md border border-input bg-transparent px-3 py-2 text-sm shadow-sm ring-offset-background placeholder:text-muted-foreground focus:outline-none focus:ring-1 focus:ring-ring disabled:cursor-not-allowed disabled:opacity-50 [& amp;>span]:line-clamp-1"
      }
    end
  end
end
