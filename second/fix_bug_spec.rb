class Cart
  attr_reader :merchandise

  def initialize
    @merchandise = []
  end

  def add(purchase)
    @merchandise << purchase.merchandise
  end
end

class Purchase
  attr_accessor :merchandise
  def initialize(options)
    @merchandise = options[:merchandise]
  end
end

describe Cart do
  let(:product)  { Cart.new }
  let(:purchase) { Purchase.new({:merchandise => 'Book'}) }

  context ".add" do
    it "adds the merchandise to the array of merchandise in the cart" do
      product.merchandise.should be_empty
      product.add(purchase)
      product.merchandise.should include('Toy Car')
    end
  end
end
