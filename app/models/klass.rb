class Klass < ActiveRecord::Base
    
    #Relationships
    has_one :professors
    has_one :courses
    
    #Scopes
    scope :chronological,  -> { order(:year).order(:first_name :desc) }
    
    #Validations
    validates_numericality_of :year, only_integer: true, greater_than: 0
    validates_numericality_of :enrollment_size, only_integer: true, greater_than: 0
    
    
    #Methods
    
end
