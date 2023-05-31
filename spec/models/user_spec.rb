require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:foods) }
    it { should have_many(:recipes) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
  end
end