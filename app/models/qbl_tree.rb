class QblTree < ActiveRecord::Base
  attr_accessible :magicalplane, :owner, :qblpath
  belongs_to :user
end
