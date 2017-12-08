class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  scope :sort, -> {
    order(product_id: :desc)
  }

  ## Message currently not working
  validates :product_id, uniqueness: { scope: :order_id,
    message: "Product already exists in Cart!" }

end
