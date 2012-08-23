class Word < ActiveRecord::Base
  attr_accessible :gematria_desc, :gematria_value, :gematria_word, :user_id
  belongs_to :user
#  validates :gematria_desc, :gematria_value, :gematria_word
end
