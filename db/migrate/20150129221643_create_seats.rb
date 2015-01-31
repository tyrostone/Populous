class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :district_id
      t.integer :level_id
      t.integer :cycle_id
      t.boolean :elected
      t.string :name

      t.timestamps
    end
  end
end
