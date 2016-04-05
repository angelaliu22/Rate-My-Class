class Course < ActiveRecord::Base
    
    # List of allowable semesters
    SEMESTERS = [['Fall','fall'],['Spring','spring'],['Summer','summer']]
    
    #Relationships
    has_one :schools
    has_many :klasses
    
    #Scopes
    scope :alphabetical,  -> { order(:last_name).order(:first_name) }
    scope :active,        -> { where(end_date: nil) }
    scope :inactive,      -> { where.not(end_date: nil) }
    scope :for_units,     -> (num_units) { where(units: num_units )}
    
    #Validations
    validates_inclusion_of :semester, in: SEMESTERS.map{|key, value| value}, message: "is not an option"
    
    #Methods
    def filter_by_keyword(keyword)
        @keyword = keyword
        Course.where("name like ?", "%#{keyword}%")
    end
    
    def for_semester(*date_params)
        semester = date_params[0]
        year = date_params[1]
        self.joins(:klasses).where(year: year).where(semester: semester).uniq!
    end
    
    def average_overall_rating
        sum = 0
        count = 0
        Course.course_reviews.each do |review|
            sum += Review.overall_ratings[review.overall_rating]
            count += 1
        end
        average = sum / count
    end
    
    def average_helpfulness_rating
        sum = 0
        count = 0
        Course.course_reviews.each do |review|
            sum += Review.helpfulness_ratings[review.helpfulness_rating]
            count += 1
        end
        average = sum / count
    end
    
    def average_workload_rating
        sum = 0
        count = 0
        Course.course_reviews.each do |review|
            sum += Review.workload_ratings[review.workload_rating]
            count += 1
        end
        average = sum / count
    end
    
    def average_professor_rating
        sum = 0
        count = 0
        Course.course_reviews.each do |review|
            sum += Review.professor_ratings[review.professor_rating]
            count += 1
        end
        average = sum / count
    end
end
