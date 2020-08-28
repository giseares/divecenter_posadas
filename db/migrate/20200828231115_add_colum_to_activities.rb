class AddColumToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :agency
  end
end
