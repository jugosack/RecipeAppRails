require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'John') }

  before { subject.save }

  it 'validates presence of name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'check the name is not blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'check the email is not blank' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
