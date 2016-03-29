class Patient < ActiveRecord::Base
  has_many :histories
end
