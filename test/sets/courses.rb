module Contexts
    module Courses
    # Context for addresses (assumes customer and user context)
    def create_courses
        @course1 = FactoryGirl.create(:course, 
            school: @school1,
            name: "Cognitive Psychology", 
            description: "This course teaches you how your brain works.", 
            number: "81-699",
            units: 9,
            start_date: 3.years.ago.to_date,
            end_date: 5.days.ago.to_date)
        @course2 = FactoryGirl.create(:course, 
            school: @school1,
            name: "Application Design and Development", 
            description: "This course is to teach you how to structure a relational database and build an application with Ruby On Rails", 
            number: "67-272",
            units: 9,
            start_date: 10.days.ago.to_date,
            end_date: nil)
        @course3 = FactoryGirl.create(:course, 
            school: @school2,
            name: "User Centered Research and Evaluation", 
            description: "This course teaches you the fundamentals of how to conduct user resaerch and other hci methods.", 
            number: "05-565",
            units: 12,
            start_date: 10.years.ago.to_date,
            end_date: nil)
      
    end
    
    def destroy_courses
      @course1.delete
      @course2.delete
      @course3.delete
    end

  end
end