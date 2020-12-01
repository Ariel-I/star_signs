class Constellation < ActiveRecord::Base #applicationrecord?
  
  has_many :traits
  has_many :users, through: :traits

end 