class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :cuisin_id, :presence => true
  belongs_to :cuisine
  has_many :dishes
  has_many :favorites
end
