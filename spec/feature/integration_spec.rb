# location: spec/feature/integration_spec.rb
require 'rails_helper'
require 'date'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: 5
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(5)
  end

  scenario 'valid published date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    # defaults to today's date
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content("2022")
  end
end


