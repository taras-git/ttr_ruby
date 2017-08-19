require 'watir'
Watir::HTMLElement.attributes << "ng-reflect-result"

$b = Watir::Browser.new :firefox

Before do
  @browser = $b
end

at_exit do
  $b.close
end