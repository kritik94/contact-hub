class Contact < ActiveRecord::Base
  belongs_to :user

  def age
    today = Date.today

    years = today.year - birthday.year
    years -= 1 if birthday.yday < today.yday

    years
  end
end
