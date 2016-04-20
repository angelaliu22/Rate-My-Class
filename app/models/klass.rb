class Klass < ActiveRecord::Base
    
    #Relationships
    has_one :professor
    has_one :course
    belongs_to :course
    belongs_to :professor
    
    #Scopes
    
    #Validations
    validates_numericality_of :year, only_integer: true, greater_than: 0
    validates_numericality_of :enrollment_size, only_integer: true, greater_than: 0
    
    #TODO CAN BE NULL AND FIX TESTS
    
    
    #Methods
    #TODO CHRONOLOGICAL 
    
end
