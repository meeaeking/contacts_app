class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: /@/

  def friendly_updated_at
    updated_at.strftime("updated at %c")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

end
