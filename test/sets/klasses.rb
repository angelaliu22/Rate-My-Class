module Contexts
   module Klasses
    # Context for addresses (assumes customer and user context)
    def create_klasses
        @klass1   = FactoryGirl.create(:klass, 
          course: @course1,
          professor: @prof1,
          semester: "Fall", 
          year: 2016, 
          enrollment_size: 120)
        @klass2   = FactoryGirl.create(:klass, 
          course: @course1,
          professor: @prof1,
          semester: "Spring", 
          year: 2016, 
          enrollment_size: 110)
        @klass3 = FactoryGirl.create(:klass, 
          course: @course2,
          professor: @prof2,
          semester: "Summer", 
          year: 2015, 
          enrollment_size: 90)
        @klass4  = FactoryGirl.create(:klass, 
          course: @course1,
          professor: @prof2,
          semester: "Summer", 
          year: 2016, 
          enrollment_size: 40)
    end
    
    def destroy_klasses
      @klass1.delete
      @klass2.delete
      @klass3.delete
      @klass4.delete 
    end
  end
end