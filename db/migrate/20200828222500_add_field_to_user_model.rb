class AddFieldToUserModel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :admin, :boolean
    add_column :users, :cel_phone, :string
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :size_neoprene, :string
    add_column :users, :size_shoes, :string
  end
end
