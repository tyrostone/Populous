class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :term_id
      t.integer :comittee_id
      t.datetime :startass
      t.datetime :endass

      t.timestamps
    end
  end
end
