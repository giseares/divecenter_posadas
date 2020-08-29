class AddTbdToInquiry < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :tbd, :string
  end
end
