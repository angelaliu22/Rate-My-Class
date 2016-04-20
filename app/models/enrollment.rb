class Enrollment < ActiveRecord::Base
    
    #Relationships
    has_one :school
    has_one :reviewer
    belongs_to :reviewer
    belongs_to :school
    
    #Scopes
    scope :active,        -> { where(end_date: nil) }
    scope :inactive,      -> { where.not(end_date: nil) }
    
    #Validations
    validates_date :start_date
    validates_date :end_date, :on_or_after => :start_date
    
    #Methods
    
end
