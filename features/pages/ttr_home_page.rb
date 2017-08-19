class TtrHomePage
  require_relative '../support/helper'

  attr_accessor :jobs_tab

  URLS = {:testing => "http://new.timetoriot.com"}

  def initialize(browser)
    @browser = browser
    @jobs_tab = @browser.element(:id => 'menu-jobs')
  end

  def visit
    @browser.goto URLS[:testing]
  end

  def page_title
    @browser.title
  end

  def open_jobs_tab
    press @jobs_tab
    @ttr_add_page = TtrAddPage.new(@browser)
  end

end