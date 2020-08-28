class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :comment
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
