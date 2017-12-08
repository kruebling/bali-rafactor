class User < ApplicationRecord
  has_one :account

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  ##TODO: Add password validation once bcrypt gets ironed out.

  
end
