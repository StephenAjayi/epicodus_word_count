require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word counter path', {:type => :feature}) do
  it("processes the user string input, and word to be counted, returning the number of times it the word to be counted appears in the string.") do
    visit('/')
    fill_in('user_input_string', :with =>"I am so so so happy")
    fill_in('word_to_count', :with => "so")
    click_button('Submit')
    expect(page).to have_content(3)
  end
end
    