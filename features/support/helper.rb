def press element
  element.wait_until_present.click
end

def wait_for element
  element.wait_until_present
end

def enter_text(element, name)
  element.send_keys name
end