class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.integer :contribution_id

      t.timestamps
    end
  end
end
