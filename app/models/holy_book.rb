class HolyBook < ActiveRecord::Base
  attr_accessible :author, :edition, :isbn, :publisheddate, :publisher, :title
  
  has_many :holy_book_verses, :dependent => :destroy
end
