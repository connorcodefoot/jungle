require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should show that a product is a product' do
      expect(Product.new).to be_a Product
    end

    it 'should pass validation as all fields are not nil' do
      category = Category.find_or_create_by! name: 'Testing'
      product = Product.new(name: 'Test', price: 10, quantity: 25, category: category)
      expect(product).to be_valid
    end

    it 'should fail validation because NAME is NIL' do
      category = Category.find_or_create_by! name: 'Testing'
      product = Product.new(name: nil, price: 10, quantity: 25, category: category)
      expect(product).to_not be_valid
    end

    it 'should fail validation because PRICE is not present' do
      category = Category.find_or_create_by! name: 'Testing'
      product = Product.new(name: "Yolo", quantity: 25, category: category)
      expect(product).to_not be_valid
    end


    it 'should fail validation because QUANTITY is not present' do
      category = Category.find_or_create_by! name: 'Testing'
      product = Product.new(name: "Yolo", price: 10, category: category)
      expect(product).to_not be_valid
    end

    it 'should fail validation because CATEGORY is not NIL' do
      product = Product.new(name: "Yolo", price: 10, quantity: 25, category: nil)
      expect(product).to_not be_valid
    end
  end
end

#comment

