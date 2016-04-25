class Klass < ActiveRecord::Base
    
    # List of allowable semesters
    SEMESTERS = [['Fall','fall'],['Spring','spring'],['Summer','summer']]
    
    #Relationships
    has_one :professor
    has_one :course
    belongs_to :course
    belongs_to :professor
    
    #Scopes
    
    #Validations
    validates_numericality_of :year, only_integer: true, greater_than: 0
    validates_numericality_of :enrollment_size, only_integer: true, greater_than: 0
    
    validates_inclusion_of :semester, in: SEMESTERS.map{|key, value| value}, message: "is not an option"

    
    #TODO CAN BE NULL AND FIX TESTS
    
    
    #Methods
    #TODO CHRONOLOGICAL 
    
end
