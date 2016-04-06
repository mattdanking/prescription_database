class Patient < ActiveRecord::Base
  has_many :histories

  include SearchableByName
  
end
