class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :gematria_value
      t.string :gematria_word
      t.string :gematria_desc
      t.integer :user_id

      t.timestamps
    end
  end
end
