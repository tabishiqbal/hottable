class ButtonComponent < ApplicationComponent
  def initialize(primary: false, **attributes)
    @primary = primary
    @attributes = attributes
  end

  def template(&)
    button **merge_attributes(button_attributes, @attributes), &
  end

  private

  def button_attributes
    {
      class: tokens(
        "inline-flex items-center rounded-md border border-transparent bg-gray-200 px-2.5 py-1.5 text-base font-medium text-gray-900 gap-2 hover:bg-gray-300",
        primary?: "bg-blue-500 hover:bg-blue-400 text-white"
      ),
    }
  end

  def primary? = !!@primary
end