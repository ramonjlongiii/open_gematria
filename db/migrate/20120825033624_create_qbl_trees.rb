class CreateQblTrees < ActiveRecord::Migration
  def change
    create_table :qbl_trees do |t|
      t.string :owner
      t.string :magicalplane
      t.string :qblpath

      t.timestamps
    end
  end
end
