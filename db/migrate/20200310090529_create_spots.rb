class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foregin_key: true
      t.string :name, null: false
      t.string :address, null: false
      t.time :open_time
      t.time :close_time
      t.string :homepage
      t.integer :fauset_num, null: false
      t.integer :towel, null: false
      t.integer :avairable_user, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
