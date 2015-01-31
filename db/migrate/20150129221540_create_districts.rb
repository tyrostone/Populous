class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :country_id
      t.integer :state_id
      t.integer :county_id
      t.integer :level_id
      t.string :name

      t.timestamps
    end
  end
end
