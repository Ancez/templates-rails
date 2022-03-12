require 'rails_helper'

RSpec.describe 'Dummy functionality', type: :feature do
  it 'works correctly' do
    visit '/'
    click_link 'Go to Templates'

    expect(page).to have_content 'Templates'
  end
end
