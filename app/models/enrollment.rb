class Enrollment < ActiveRecord::Base
    
    #Relationships
    has_one :schools
    has_one :reviewers
    
    #Scopes
    scope :active,        -> { where(end_date: nil) }
    scope :inactive,      -> { where.not(end_date: nil) }
    
    #Validations
    
    #Methods
    
end
