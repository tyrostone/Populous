class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.integer :level_id
      t.integer :branch_id
      t.string :name

      t.timestamps
    end
  end
end
