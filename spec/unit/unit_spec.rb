# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'date'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid title' do
    expect(subject).to be_valid
  end

  it 'Test: Book should not be valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    
    described_class.new(title: "harry potter", author: 'J.K Rowling')
  end

  it 'is valid with valid author' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author' do
    subject.title = nil
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: 5)
  end

  it 'is valid with valid price' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.title = nil
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', published_date: DateTime.new(2001, 5, 3.5))
  end

  it 'is valid with valid published date' do
    expect(subject).to be_valid
  end

  it 'is not valid without a published date' do
    subject.title = nil
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end

