require 'rails_helper'

RSpec.describe Food, type: :model do
  let(:user) { User.create(email: 'test@example.com') }

  it 'is valid with valid attributes' do
    food = Food.new(name: 'Apple', measurement_unit: 'Piece', price: 1.99, user: user)
    expect(food).to be_valid
  end

  it 'is not valid without a name' do
    food = Food.new(measurement_unit: 'Piece', price: 1.99, user: user)
    expect(food).not_to be_valid
    expect(food.errors[:name]).to include("can't be blank")
  end

  it 'is not valid without a measurement unit' do
    food = Food.new(name: 'Apple', price: 1.99, user: user)
    expect(food).not_to be_valid
    expect(food.errors[:measurement_unit]).to include("can't be blank")
  end

  it 'is not valid without a price' do
    food = Food.new(name: 'Apple', measurement_unit: 'Piece', user: user)
    expect(food).not_to be_valid
    expect(food.errors[:price]).to include("can't be blank")
  end

  it 'is not valid with a name longer than 50 characters' do
    food = Food.new(name: 'A' * 51, measurement_unit: 'Piece', price: 1.99, user: user)
    expect(food).not_to be_valid
    expect(food.errors[:name]).to include("is too long (maximum is 50 characters)")
  end

  it 'is not valid with a measurement unit longer than 20 characters' do
    food = Food.new(name: 'Apple', measurement_unit: 'A' * 21, price: 1.99, user: user)
    expect(food).not_to be_valid
    expect(food.errors[:measurement_unit]).to include("is too long (maximum is 20 characters)")
  end

  it 'is not valid with a price less than 1' do
    food = Food.new(name: 'Apple', measurement_unit: 'Piece', price: 0, user: user)
    expect(food).not_to be_valid
    expect(food.errors[:price]).to include("must be greater than or equal to 1")
  end

  it 'belongs to a user' do
    association = Food.reflect_on_association(:user)
    expect(association.macro).to eq(:belongs_to)
  end

  it 'has many recipe_foods' do
    association = Food.reflect_on_association(:recipe_foods)
    expect(association.macro).to eq(:has_many)
    expect(association.options[:dependent]).to eq(:destroy)
  end

  it 'has many recipes through recipe_foods' do
    association = Food.reflect_on_association(:recipes)
    expect(association.macro).to eq(:has_many)
    expect(association.options[:through]).to eq(:recipe_foods)
  end
end