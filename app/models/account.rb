class Account < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :words, :dependent => :destroy
  has_many :qbl_trees, dependent => :destroy
end
