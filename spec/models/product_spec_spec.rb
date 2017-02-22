require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'Validations' do
    subject { described_class.new(
      name: "Anything",
      price: 10,
      quantity: 10,
      category: "Anything"
      )}

    it "is valid with valid attributes" do
      subject.name = "Anything"
      subject.price = 10
      subject.quantity = 10
      subject.category = "Anything"
      expect(product).to be_valid
    end
    #
    # it "is not valid without name" do
    #   product.price = 10
    #   product.quantity = 10
    #   product.category = "Anything"
    #   expect(product).to_not be_valid
    # end
    #   # validates :name, presence: true
    # it "is not valid without price" do
    #   product.name = "Anything"
    #   product.quantity = 10
    #   product.category = "Anything"
    #   expect(product).to_not be_valid
    # end
    #   # validates :price, presence: true
    # it "is not valid without quantity" do
    #   product.name = "Anything"
    #   product.price = 10
    #   product.category = "Anything"
    #   expect(product).to_not be_valid
    # end
    #   # validates :quantity, presence: true
    # it "is not valid without category" do
    #   product.name = "Anything"
    #   product.price = 10
    #   product.quantity = 10
    #   expect(product).to_not be_valid
    # end
      # validates :category, presence: true
  end
end
