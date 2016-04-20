module Contexts
  module Reviews
    # Context for addresses (assumes customer and user context)
    def create_reviews
        @review1 = FactoryGirl.create(:review, 
            reviewer: @reviewer1, 
            klass: @klass1, 
            date: 10.days.ago.to_date, 
            overall_rating: 4,
            helpfulness_rating: 2,
            workload_rating: 2,
            professor_rating: 5)
        @review2 = FactoryGirl.create(:review, 
            reviewer: @reviewer2, 
            klass: @klass1, 
            date: 4.days.ago.to_date, 
            overall_rating: 3,
            helpfulness_rating: 1,
            workload_rating: 5,
            professor_rating: 3)
        @review3 = FactoryGirl.create(:review, 
            reviewer: @reviewer1, 
            klass: @klass2, 
            date: 10.months.ago.to_date, 
            overall_rating: 2,
            helpfulness_rating: 2,
            workload_rating: 1,
            professor_rating: 3)
        @review1 = FactoryGirl.create(:review, 
            reviewer: @reviewer3, 
            klass: @klass3, 
            date: 1.month.ago.to_date, 
            overall_rating: 2,
            helpfulness_rating: 2,
            workload_rating: 4,
            professor_rating: 2)
    end
    
      def destroy_reviews
      @review1.delete
      @review2.delete
      @review3.delete
      @review4.delete 
    end

  end
end