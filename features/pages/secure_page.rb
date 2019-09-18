require_relative 'common_page'

class SecurePage < CommonPage

  URI = "/secure".freeze

  def open_page
    super(URI)
  end

  def make_logout
    page.find(:xpath, '//*[contains(@class,"button")]').click
  end
end