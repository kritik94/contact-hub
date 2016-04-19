class Company < ActiveRecord::Base
  belongs_to :user
  has_one :address, as: :owner
  has_many :contacts

  validates :name, presence: true
end
