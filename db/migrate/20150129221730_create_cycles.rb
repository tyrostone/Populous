class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.string :name
      t.datetime :startcycle
      t.datetime :endcycle

      t.timestamps
    end
  end
end
