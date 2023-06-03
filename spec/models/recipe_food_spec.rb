RSpec.describe RecipeFood, type: :model do
  let(:food) { Food.create(name: 'Ingredient 1', measurement_unit: 'unit', price: 2.99) }
  let(:recipe) { Recipe.create(name: 'Recipe 1') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      recipe_food = RecipeFood.new(food: food, recipe: recipe, quantity: 2)
      expect(recipe_food).to be_valid
    end

    it 'is not valid without a quantity' do
      recipe_food = RecipeFood.new(food: food, recipe: recipe)
      expect(recipe_food).not_to be_valid
    end

    it 'is not valid with a quantity less than 1' do
      recipe_food = RecipeFood.new(food: food, recipe: recipe, quantity: 0)
      expect(recipe_food).not_to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a food' do
      association = described_class.reflect_on_association(:food)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'belongs to a recipe' do
      association = described_class.reflect_on_association(:recipe)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
