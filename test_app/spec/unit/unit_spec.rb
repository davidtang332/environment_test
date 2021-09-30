# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Percy Jackson', author: 'Rick Riordan', price: '15', published_date: '06/12/2005')
  end

  
  it 'is valid title with valid attributes' do

    title = Book.new(title: 'Percy Jackson', author: 'Rick Riordan', price: '15', published_date: '06/12/2005') 
    expect(title).to be_valid
  end

  
  it 'is valid author with valid attributes' do

    author = Book.new(title: 'Percy Jackson', author: 'Rick Riordan', price: '15', published_date: '06/12/2005') 
    expect(author).to be_valid
  end


  it 'is valid date with valid attributes' do
    published_date = Book.new(title: 'Percy Jackson', author: 'Rick Riordan', price: '15', published_date: '06/12/2005') 
    expect(published_date).to be_valid
  end

  it 'is valid price with valid attributes' do
    price = Book.new(title: 'Percy Jackson', author: 'Rick Riordan', price: '15', published_date: '06/12/2005') 
    expect(price).to be_valid
  end
end
