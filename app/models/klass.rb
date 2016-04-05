class Klass < ActiveRecord::Base
    
    #Relationships
    has_one :professors
    has_one :courses
    
    #Scopes
    scope :chronological,  -> { order(:year).order(:first_name :desc) }
    
    #Validations
    
    #Methods
    
end
