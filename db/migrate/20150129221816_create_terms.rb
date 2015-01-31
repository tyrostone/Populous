class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :representative_id
      t.integer :seat_id
      t.datetime :startterm
      t.datetime :endterm
      t.string :name

      t.timestamps
    end
  end
end
