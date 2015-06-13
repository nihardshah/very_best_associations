class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :name, :uniqueness => { :scope => :address }
  has_many :favorites
end
