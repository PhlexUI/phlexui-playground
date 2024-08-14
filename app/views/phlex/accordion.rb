# frozen_string_literal: true

module Phlex
  class Accordion < ApplicationView
    def view_template
      Accordion(class: "space-y-1") do
        AccordionItem(
                class!:
                  "data-[accordion-open-value=true]:bg-muted hover:bg-muted rounded-lg pb-3",
                rotate_icon: 135
              ) do
          AccordionTrigger(class!: "w-full rounded-lg") do
            div(class: "p-6 pb-3 pl-16 relative text-left") do
              AccordionIcon(class: "absolute left-6 top-6") do
                svg(
                  xmlns: "http://www.w3.org/2000/svg",
                  fill: "none",
                  viewbox: "0 0 24 24",
                  stroke_width: "1.5",
                  stroke: "currentColor",
                  class: "w-6 h-6"
                ) do |s|
                  s.path(
                    stroke_linecap: "round",
                    stroke_linejoin: "round",
                    d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
                  )
                end
              end
              p(class: "font-medium") { "What is PhlexUI?" }
            end
          end

          AccordionContent do
            p(class: "pl-16 pr-4 pb-4 text-muted-foreground") do
              "PhlexUI is a UI component library for Ruby devs who want to build better, faster."
            end
          end
        end

        AccordionItem(
                class!:
                  "data-[accordion-open-value=true]:bg-muted hover:bg-muted rounded-lg pb-3",
                rotate_icon: 135
              ) do
          AccordionTrigger(class!: "w-full rounded-lg") do
            div(class: "p-6 pb-3 pl-16 relative text-left") do
              AccordionIcon(class: "absolute left-6 top-6") do
                svg(
                  xmlns: "http://www.w3.org/2000/svg",
                  fill: "none",
                  viewbox: "0 0 24 24",
                  stroke_width: "1.5",
                  stroke: "currentColor",
                  class: "w-6 h-6"
                ) do |s|
                  s.path(
                    stroke_linecap: "round",
                    stroke_linejoin: "round",
                    d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
                  )
                end
              end
              p(class: "font-medium") { "Can I use it with Rails?" }
            end
          end

          AccordionContent do
            p(class: "pl-16 pr-4 pb-4 text-muted-foreground") do
              "Yes, PhlexUI is pure Ruby and works great with Rails. It's a Ruby gem that you can install into your Rails app."
            end
          end
        end
      end
    end
  end
end
