class Contact < ActiveRecord::Base
  belongs_to :user
  has_one :address, as: :owner
  
  validates :name, presence: true

  def age
    today = Date.today

    years = today.year - birthday.year
    years -= 1 if today.yday < birthday.yday

    years
  end
end
