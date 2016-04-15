class User < ActiveRecord::Base
  has_one :account
  has_many :contacts
  has_many :companies
end
