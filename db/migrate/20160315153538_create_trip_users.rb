class CreateTripUsers < ActiveRecord::Migration
  def change
    create_table :trip_users do |t|
      t.integer :trip_id, null: false
      t.integer :user_id, null: false
    end
  end
end
