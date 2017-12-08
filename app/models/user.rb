class User < ApplicationRecord
  has_one :account

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  ## Add password validation once bcrypt gets ironed out.

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
