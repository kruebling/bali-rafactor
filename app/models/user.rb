class User < ApplicationRecord
  has_secure_password
  has_one :account

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates :password, :format => {:with => /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/, :multiline => true}


end
