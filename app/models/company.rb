class Company < ActiveRecord::Base
  belongs_to :user
  has_one :address, as: :owner
  has_many :contacts

  validates :name, presence: true

  scope :current, (lambda do |current_user|
    where(user_id: current_user.id).order(created_at: :desc)
  end)
end
