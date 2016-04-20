class Review < ActiveRecord::Base
    
    #Relationships
    has_one :klass
    has_one :reviewer
    belongs_to :reviewer
    belongs_to :klass
    has_one :course through :klass
    
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
    scope :for_class,           -> (klass_id) {where(klass_id: klass_id)}

    
    #Validations
    validates_date :date
    validates :overall_rating, presence: true
    validates :helpfulness_rating, presence: true
    validates :workload_rating, presence: true
    validates :professor_rating, presence: true
    
    #Methods
    
end
