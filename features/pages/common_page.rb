require 'capybara/rspec'

class CommonPage

  include Capybara::DSL

  URL = "https://the-internet.herokuapp.com".freeze

  def open_page(uri)
    page.visit(URL + uri)
  end

end