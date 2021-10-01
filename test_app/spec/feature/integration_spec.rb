# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '12'
    fill_in 'Published date', with: '28/06/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Percy Jackson')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '15'
    fill_in 'Published date', with: '28/06/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Rick Riordan')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '15'
    fill_in 'Published date', with: '28/06/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '15'
    fill_in 'Published date', with: '28/06/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2005-06-28')
  end
end