class CreateHolyBooks < ActiveRecord::Migration
  def change
    create_table :holy_books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :publisheddate
      t.string :isbn
      t.string :edition

      t.timestamps
    end
  end
end
