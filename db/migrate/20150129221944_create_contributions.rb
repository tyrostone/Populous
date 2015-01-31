class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.integer :representative_id
      t.integer :issue_id
      t.decimal :value

      t.timestamps
    end
  end
end
