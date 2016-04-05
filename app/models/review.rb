class Review < ActiveRecord::Base
    
    #Relationships
    has_one :klasses
    has_one :reviewers
    have_one :overall_rating
    have_one :helpfulness_rating
    have_one :workload_rating
    have_one :professor_rating
    
    #5 is the best
    enum overall_rating: [:five, :four, :three, :two, :one]
    #5 is the most helpful
    enum helpfulness_rating: [:five, :four, :three, :two, :one]
    #5 is the most work
    enum workload_rating: [:five, :four, :three, :two, :one]
    #5 is the best
    enum professor_rating: [:five, :four, :three, :two, :one]
    
    
    #Scopes
    scope :chronological,       -> { order(:date)}
    scope :for_class,           -> (class_id) {where(class_id: class_id)}
    scope :for_class_name,      -> (class_name) { where(name: class_name)}
    scope :for_class_num,      -> (class_num) { where(number: class_num)}

    
    #Validations
    validates_date :date
    validates :overall_rating, presence: true
    validates :helpfulness_rating, presence: true
    validates :workload_rating, presence: true
    validates :professor_rating, presence: true
    
    #Methods
    
end
