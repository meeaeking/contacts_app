class ChangePhoneNumber < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :phone_number, :string
  end
end
