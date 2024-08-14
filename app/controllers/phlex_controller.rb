# frozen_string_literal: true

class PhlexController < ApplicationController
  layout -> { ApplicationLayout }

  def combobox
    render(Phlex::Combobox.new)
  end

  def tooltip
    render(Phlex::Tooltip.new)
  end

  def select
    render(Phlex::Select.new)
  end

  def theme_toggle
    render(Phlex::ThemeToggle.new)
  end

  def accordion
    render(Phlex::Accordion.new)
  end
end
