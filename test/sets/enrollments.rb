module Contexts
    module Enrollments
    # Context for addresses (assumes customer and user context)
    def create_enrollments
        @reviewer1_enroll1 = FactoryGirl.create(:enrollment, 
            reviewer: @reviewer1,
            school: @school1,
            start_date: 10.days.ago.to_date, 
            end_date: 4.days.ago.to_date)
         @reviewer1_enroll2 = FactoryGirl.create(:enrollment, 
            reviewer: @reviewer1,
            school: @school2,
            start_date: 3.days.ago.to_date, 
            end_date: nil)
         @reviewer2_enroll1 = FactoryGirl.create(:enrollment, 
            reviewer: @reviewer2,
            school: @school1,
            start_date: 1.month.ago.to_date, 
            end_date: nil)
        @reviewer3_enroll1 = FactoryGirl.create(:enrollment, 
            reviewer: @reviewer3,
            school: @school1,
            start_date: 1.month.ago.to_date, 
            end_date: 1.day.ago.to_date)
    end
      
    def destroy_enrollments
      @reviewer1_enroll1.delete
      @reviewer1_enroll2.delete
        
      @reviewer2_enroll1.delete
      
      @reviewer3_enroll1.delete 
    end
  end
end
