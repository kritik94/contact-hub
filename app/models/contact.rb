class Contact < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  has_one :address, as: :owner

  validates :name, presence: true

  scope :current, (lambda do |current_user|
    where(user_id: current_user.id).order(created_at: :desc)
  end)

  def age
    today = Date.today

    years = today.year - birthday.year
    years -= 1 if today.yday < birthday.yday

    years
  end
end
