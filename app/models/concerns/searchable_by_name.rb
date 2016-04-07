module SearchableByName
  extend ActiveSupport::Concern
    
  included do
    # scope :search, ->(term) { where("name LIKE ?", "%#{term}%") }
  end


    # Note: this will work in development with SQLite. If you switch to PostgreSQL in production, you may need to change  LIKE to  ILIKE
  module ClassMethods
    def search(name, dob)
      where("name LIKE ? OR dob LIKE ?", "%#{name}%", "%#{dob}%")
    end

    # def search_dob(dob)
    #   where("dob LIKE ?", "%#{dob}%")
    # end
  end
end