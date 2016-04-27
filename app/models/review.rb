class Review < ActiveRecord::Base
    
    #List of ratings
    OVERALL_RATING = [[1, "Horrible"], [2, "Bad"], [3, "Neutral"], [4, "Good"], [5, "Fantastic"]]
    
    HELPFULNESS_RATING = [[1, "Not useful"], [2, "Sort of useful"], [3, "Neutral"], [4, "Useful"], [5, "Very useful"]]
    
    WORKLOAD_RATING = [[1, "Barely any time"], [2, "A few hours a week"], [3, "Average"], [4, "A lot of time"], [5, "All my time"]]
    
    PROFESSOR_RATING = [[1, "Horrible"], [2, "Bad"], [3, "Neutral"], [4, "Good"], [5, "Fantastic"]]
    
    #Relationships
    belongs_to :reviewer
    belongs_to :klass
    has_one :course, through: :klass
    
    #Scopes
    scope :chronological,       -> { order(:date)}
    scope :for_class,           -> (klass_id) {where(klass_id: klass_id)}

    
    #Validations
    validates_date :date
    validates_inclusion_of :overall_rating, in: OVERALL_RATING.map{|key, value| value}, message: "is not an option"
    
    validates_inclusion_of :helpfulness_rating, in: HELPFULNESS_RATING.map{|key, value| value}, message: "is not an option"
    
    validates_inclusion_of :workload_rating, in: WORKLOAD_RATING.map{|key, value| value}, message: "is not an option"
    
    validates_inclusion_of :professor_rating, in: PROFESSOR_RATING.map{|key, value| value}, message: "is not an option"
    
    #Methods
    
end
