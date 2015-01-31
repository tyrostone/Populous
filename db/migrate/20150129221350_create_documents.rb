class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :representative_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
