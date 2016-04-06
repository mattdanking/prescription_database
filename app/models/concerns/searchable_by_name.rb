module SearchableByName
  extend ActiveSupport::Concern
    
  included do
    # scope :search, ->(term) { where("name LIKE ?", "%#{term}%") }
  end

  module ClassMethods
    def search_name(term)
      where("name LIKE ?", "%#{term}%")
    end

    def search_dob(term)
      where("dob = ?", "%#{term}%")
    end
  end
end