require 'rails_helper'


RSpec.describe Product, type: :model do

  describe 'Validations' do

    it 'saves successfully if name, price, quantity, and category fields are set' do
      @product = Product.create(name: "Birch", price_cents: 1500, quantity: 10, category_id: 1)

      expect(@product.name).to be_present
      expect(@product.price_cents).to be_present
      expect(@product.quantity).to be_present
      expect(@product.category_id).to be_present
    end

    it 'should throw an error if name is absent' do
      @product = Product.create(name: nil, price_cents: 1500, quantity: 10, category_id: 1)
      expect(@product.name).to be_nil
      puts @product.errors.full_messages
    end

    it 'should be throw an error if price is absent' do
      @product = Product.create(name: "Birch", price_cents: nil, quantity: 10, category_id: 1)
      expect(@product.price).to be_nil
      puts @product.errors.full_messages
    end

    it 'should be throw an error if quantity is absent' do
      @product = Product.create(name: "Birch", price_cents: 1500, quantity: nil, category_id: 1)
      expect(@product.quantity).to be_nil
      puts @product.errors.full_messages
    end

    it 'should be throw an error if category id is absent' do
      @product = Product.create(name: "Birch", price_cents: 1500, quantity: 10, category_id: nil)
      expect(@product.category_id).to be_nil
      puts @product.errors.full_messages
    end


  end

end
