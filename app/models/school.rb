class School < ActiveRecord::Base
    
    #Relationships
    has_many :professorships
    has_many :enrollments
    
    #Scopes
    
    #Validations
    
    #Methods
    def num_classes_rated
        self.joins(:courses).where(school_id: self.id).count
    end
    
    def num_professors_rated
        self.joins(:professorships).where(school_id: self.id).count
    end
    
    
end
