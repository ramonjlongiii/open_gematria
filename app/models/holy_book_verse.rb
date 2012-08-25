class HolyBookVerse < ActiveRecord::Base
  attr_accessible :chapter, :holy_book_id, :versenumber, :versetext

  belongs_to :holy_book
end
