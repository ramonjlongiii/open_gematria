class CreateQblTrees < ActiveRecord::Migration
  def change
    create_table :qbl_trees do |t|
      t.string :owner
      t.string :plane
      t.string :qblpath
      t.string :777

      t.timestamps
    end
  end
end
