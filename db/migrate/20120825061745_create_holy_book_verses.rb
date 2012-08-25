class CreateHolyBookVerses < ActiveRecord::Migration
  def change
    create_table :holy_book_verses do |t|
      t.integer :versenumber
      t.integer :chapter
      t.string :versetext
      t.integer :holy_book_id

      t.timestamps
    end
  end
end
