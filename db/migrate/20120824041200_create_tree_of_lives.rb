class CreateTreeOfLives < ActiveRecord::Migration
  def change
    create_table :tree_of_lives do |t|
      t.string :tree_sphere_name
      t.integer :tree_path_number
      t.string :tree_path_correspondence

      t.timestamps
    end
  end
end
