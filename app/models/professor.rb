class Professor < ActiveRecord::Base
    
    #Relationships
    has_many :professorships
    has_many :klasses
    
    #Scopes
    scope :alphabetical,  -> { order(:last_name).order(:first_name) }
    
    #Validations
    
    
    #Methods
    
    def name
        "#{last_name}, #{first_name}"
    end

    def proper_name
        "#{first_name} #{last_name}"
    end

end
