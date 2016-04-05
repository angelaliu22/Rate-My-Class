class Reviewer < ActiveRecord::Base

    #Relationships
    has_many :reviews
    has_many :enrollments
    
    #Scopes
    
    #Validations
    
    #Methods
    def num_classes_reviewed
        self.joins(:reviews).where(reviewer_id: self.id).count
    end
    
end
