require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should show that a user is a user' do
      expect(User.new).to be_a User
    end

    it 'should pass validation as all fields are not nil' do
      user = User.new(name: 'Test', email: 'c@c.com', password: '123', password_confirmation: '123')
      expect(user).to be_valid
    end

    it 'should fail validation as NAME is set to NIL' do
      user = User.new(name: nil, email: 'c@c.com', password: '123', password_confirmation: '123')
      expect(user).to_not be_valid
    end

    it 'should fail validation as EMAIL is set to NIL' do
      user = User.new(name: "Yes", email: nil, password: '123', password_confirmation: '123')
      expect(user).to_not be_valid
    end






  end
end