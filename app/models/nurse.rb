class Nurse < ApplicationRecord

  belongs_to :user
  has_many :patients
  
end