class HolyBookVerse < ActiveRecord::Base
  attr_accessible :chapter, :holy_book_id, :versenumber, :versetext, :versecomment, :versecommentauthor

  belongs_to :holy_book
end
