class CreateQblTrees < ActiveRecord::Migration
  def change
    create_table :qbl_trees do |t|
      t.string :owner
      t.string :plane
      t.integer :path
      t.string :777entry
      t.integer :777entry_id

      t.timestamps
    end
  end
end
