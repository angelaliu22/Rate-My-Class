class Course < ActiveRecord::Base
    
    #Relationships
    has_one :school #TODO: FIX ALL THE SINGULARS
    has_many :klasses
    belongs_to :school
    has_many :reviews through :klasses
    
    #Scopes
    scope :alphabetical,  -> { order(:last_name).order(:first_name) }
    scope :active,        -> { where(end_date: nil) }
    scope :inactive,      -> { where.not(end_date: nil) }
    scope :for_units,     -> (num_units) { where(units: num_units )}
    
    #Validations
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates_numericality_of :units, only_integer: true, greater_than: 0
        
    validates_date :start_date
    validates_date :end_date, :on_or_after => :start_date
    
    
    #Methods
    def filter_by_keyword(keyword)
        Course.where("name like ?", "%#{keyword}%")
    end
    
    def for_semester(*date_params)
        semester = date_params[0]
        year = date_params[1]
        self.joins(:klasses).where(year: year).where(semester: semester).uniq!
    end
    
    def average_overall_rating 
        sum = 0.0
        count = 0.0
        Course.course_reviews.each do |review|
            sum += Review.overall_ratings[review.overall_rating].to_f
            count += 1
        end
        average = sum / count
    end
    
    def average_helpfulness_rating
        sum = 0.0
        count = 0.0
        Course.course_reviews.each do |review|
            sum += Review.helpfulness_ratings[review.helpfulness_rating].to_f
            count += 1
        end
        average = sum / count
    end
    
    def average_workload_rating
        sum = 0.0
        count = 0.0
        Course.course_reviews.each do |review|
            sum += Review.workload_ratings[review.workload_rating].to_f
            count += 1
        end
        average = sum / count
    end
    
    def average_professor_rating
        sum = 0.0
        count = 0.0
        Course.course_reviews.each do |review|
            sum += Review.professor_ratings[review.professor_rating].to_f
            count += 1
        end
        average = sum / count
    end
end
