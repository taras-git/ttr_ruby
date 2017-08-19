class TtrAddPage
  require_relative '../support/helper'

  attr_accessor :add_button, :company_name

  def initialize(browser)
    @browser = browser
    @add_button = @browser.element(:id => 'add')
    @company_name = @browser.element(:id => 'company')
    @company_name_dropdown = @browser.element(:span => 'Mons')

  end

  def page_title
    @browser.title
  end

  def press_add_button
    press @add_button
  end

  def press_company_name
    press @company_name_dropdown
  end

  def enter_company_name text
    enter_text(@company_name, text)
  end


end