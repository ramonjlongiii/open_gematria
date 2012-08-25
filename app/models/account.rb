class Account < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :words
  has_many :qbl_trees
end
