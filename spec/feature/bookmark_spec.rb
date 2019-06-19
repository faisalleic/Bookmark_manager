require 'spec_helper'

feature 'view bookmark ' do
  scenario 'see hello world' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end
