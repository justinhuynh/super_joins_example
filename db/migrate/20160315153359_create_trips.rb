class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :location
      t.integer :group_leader_id
      t.integer :group_treasurer_id
    end
  end
end
