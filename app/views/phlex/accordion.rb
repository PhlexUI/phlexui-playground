# frozen_string_literal: true

module Phlex
  class Accordion < ApplicationView
    def view_template
      div(class: "flex justify-center mt-52 w-full") do
        div(class: "w-1/2") do
          Accordion do
            AccordionItem do
              AccordionTrigger do
                p(class: "font-medium") { "What is PhlexUI?" }
                AccordionIcon()
              end

              AccordionContent do
                p(class: "text-sm pb-4") do
                  "PhlexUI is a UI component library for Ruby devs who want to build better, faster."
                end
              end
            end
          end

          Accordion do
            AccordionItem do
              AccordionTrigger do
                p(class: "font-medium") { "Can I use it with Rils?" }
                AccordionIcon()
              end

              AccordionContent do
                p(class: "text-sm pb-4") do
                  "Yes, PhlexUI is pure Ruby and works great with Rails. It's a Ruby gem that you can install into your Rails app."
                end
              end
            end
          end
        end
      end
    end
  end
end
