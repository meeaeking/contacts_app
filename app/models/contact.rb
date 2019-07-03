class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("updated at %c")
  end

end
