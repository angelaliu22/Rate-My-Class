class Reviewer < ActiveRecord::Base

    #Relationships
    has_many :reviews
    has_many :enrollments
    
    #Scopes
    
    #Validations
    validates :password, presence: true
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates_numericality_of :year, only_integer: true, greater_than: 0
    
    #Methods
    def num_classes_reviewed
        self.joins(:reviews).where(reviewer_id: self.id).count
    end
    
end
