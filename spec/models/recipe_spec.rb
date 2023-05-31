require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { User.create(email: 'test@example.com') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      recipe = Recipe.new(
        name: 'Delicious Recipe',
        preparation_time: '30 minutes',
        cooking_time: '1 hour',
        description: 'A tasty recipe'
      )
      recipe.user = user
      expect(recipe).to be_valid
    end

    it 'is not valid without a name' do
      recipe = Recipe.new(
        preparation_time: '30 minutes',
        cooking_time: '1 hour',
        description: 'A tasty recipe'
      )
      recipe.user = user
      expect(recipe).not_to be_valid
      expect(recipe.errors[:name]).to include("can't be blank")
    end

    it 'is not valid without a preparation time' do
      recipe = Recipe.new(
        name: 'Delicious Recipe',
        cooking_time: '1 hour',
        description: 'A tasty recipe'
      )
      recipe.user = user
      expect(recipe).not_to be_valid
      expect(recipe.errors[:preparation_time]).to include("can't be blank")
    end

    it 'is not valid without a cooking time' do
      recipe = Recipe.new(
        name: 'Delicious Recipe',
        preparation_time: '30 minutes',
        description: 'A tasty recipe'
      )
      recipe.user = user
      expect(recipe).not_to be_valid
      expect(recipe.errors[:cooking_time]).to include("can't be blank")
    end

    it 'is not valid without a description' do
      recipe = Recipe.new(
        name: 'Delicious Recipe',
        preparation_time: '30 minutes',
        cooking_time: '1 hour'
      )
      recipe.user = user
      expect(recipe).not_to be_valid
      expect(recipe.errors[:description]).to include("can't be blank")
    end

    it 'is not valid with a name longer than 50 characters' do
      recipe = Recipe.new(
        name: 'This is a very long recipe name that exceeds the maximum character limit',
        preparation_time: '30 minutes',
        cooking_time: '1 hour',
        description: 'A tasty recipe'
      )
      recipe.user = user
      expect(recipe).not_to be_valid
      expect(recipe.errors[:name]).to include('is too long (maximum is 50 characters)')
    end
  end
end
