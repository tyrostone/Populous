class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.integer :district_id
      t.integer :party_id
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
