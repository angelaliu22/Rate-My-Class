module Contexts
  module Professorships
    # Context for addresses (assumes customer and user context)
    def create_professorships
        @prof1_professorship1   = FactoryGirl.create(:professorship, 
            professor: @prof1, 
            school: @school1,
            start_date: 10.days.ago.to_date, 
            end_date: nil)
        @prof1_professorship2   = FactoryGirl.create(:professorship, 
            professor: @prof1, 
            school: @school2,
            start_date: 1.year.ago.to_date, 
            end_date: 3.months.ago.to_date)
        @prof2_professorship1   = FactoryGirl.create(:professorship, 
            professor: @prof2, 
            school: @school3,
            start_date: 10.days.ago.to_date, 
            end_date: nil)
        @prof2_professorship2   = FactoryGirl.create(:professorship, 
            professor: @prof2, 
            school: @school2,
            start_date: 3.years.ago.to_date, 
            end_date: 1.year.ago.to_date)
        @prof3_professorship1   = FactoryGirl.create(:professorship, 
            professor: @prof3, 
            school: @school1,
            start_date: 10.days.ago.to_date, 
            end_date: nil)
      
    end
    
    def destroy_professorships
      @prof1_professorship1.delete
      @prof1_professorship2.delete
      @prof2_professorship1.delete
      @prof2_professorship2.delete 
      @prof3_professorship1.delete
    end
  end
end