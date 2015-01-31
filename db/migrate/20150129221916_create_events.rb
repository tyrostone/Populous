class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :issue_id
      t.integer :user_id
      t.integer :measurement_id
      t.decimal :value
      t.string :description
      t.decimal :contribution
      t.datetime :mark

      t.timestamps
    end
  end
end
