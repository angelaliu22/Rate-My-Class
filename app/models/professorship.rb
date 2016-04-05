class Professorship < ActiveRecord::Base
    
    #Relationships
    has_one :professors
    has_one :schools
    
    #Scopes
    scope :active,        -> { where(end_date: nil) }
    scope :inactive,      -> { where.not(end_date: nil) }
    
    #Validations
    
    #Methods
    
end
