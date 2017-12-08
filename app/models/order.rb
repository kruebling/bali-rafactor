class Order < ApplicationRecord
  belongs_to :account
  has_many :order_items
  before_save :update_total
  before_create :finalize

  before_save :calculate_total

  def calculate_total
    self.total_price = order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  ## May need to come back to this.
  def finalize
    if self.status == 1
      self.status = 2
      self.save
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
