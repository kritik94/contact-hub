class Company < ActiveRecord::Base
  belongs_to :user
  has_one :address, as: :owner

  validates :name, presence: true
end
