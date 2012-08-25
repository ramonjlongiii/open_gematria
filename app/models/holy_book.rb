class HolyBook < ActiveRecord::Base
  attr_accessible :author, :edition, :isbn, :publisheddate, :publisher, :title
end
