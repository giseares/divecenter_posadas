class AddForeignKeyToActivity < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :activities, :agencies
  end
end
