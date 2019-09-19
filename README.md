These simple tests created in a couple with Capybara and RSpec.
## The task conditions
Implement UI automation tests for form https://the-internet.herokuapp.com/login (ruby+rspec+capybara)
1. implement at least 3 tests
2. Code should stored in github or gitlab
3. Include steps for running tests

You can add more features to tests (like logging, screenshot etc) as plu

## In order to launch these tests you have to:
1. Install Ruby [::See Install Ruby Guide::](https://www.ruby-lang.org/ru/documentation/installation/#rubyinstaller)
2. Chrome is specified as a default browser for these tests. So download the latest web driver (for [Chrome](https://chromedriver.chromium.org/downloads) or [FireFox](https://github.com/mozilla/geckodriver/releases)) and add it to the PATH of your OS [See example for Windows](https://www.youtube.com/watch?v=KNzGtHI_60o)
3. Pull this repository
4. Open *features\tests* folder and inner **test_spec.rb**  file using cmd
5. Enter **rspec test_spec.rb** command

Note: You may be have to install new gems (Refer to the Gemfile). Use **gem install required_gem** command
