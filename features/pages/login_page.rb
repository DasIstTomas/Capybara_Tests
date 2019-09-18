require_relative 'common_page'

class LoginPage < CommonPage

  URI = "/login".freeze

  def open_page
    super(URI)
  end

  def make_login(username, password)
    fill_in_username(username)
    fill_in_password(password)
    submit_form
  end

  def fill_in_username(username)
    page.fill_in 'username', with: username
  end

  def fill_in_password(password)
    page.fill_in 'password', with: password
  end

  def submit_form
    page.find('[type=submit]').click # Capybara do not look at the type attribute in it's finders
  end

end