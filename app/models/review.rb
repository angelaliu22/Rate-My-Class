class Review < ActiveRecord::Base
    
    #Relationships
    has_one :klasses
    has_one :reviewers
    belongs_to :reviewers
    belongs_to :klasses
    
    #5 is the best
    enum overall_rating: [:overall_five, :overall_four, :overall_three, :overall_two, :overall_one]
    #5 is the most helpful
    enum helpfulness_rating: [:helpfulness_five, :helpfulness_four, :helpfulness_three, :helpfulness_two, :helpfulness_one]
    #5 is the most work
    enum workload_rating: [:workload_five, :workload_four, :workload_three, :workload_two, :workload_one]
     #5 is the best
    enum professor_rating: [:professor_five, :professor_four, :professor_three, :professor_two, :professor_one]
    
    
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
