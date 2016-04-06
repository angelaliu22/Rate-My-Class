module Contexts
  module Professors
    # Context for addresses (assumes customer and user context)
    def create_professors
        @prof1   = FactoryGirl.create(:professor, 
            first_name: "Laura", 
            last_name: "Dabbish", 
            department: "Human-Computer-Interaction")
        @prof2   = FactoryGirl.create(:professor, 
            first_name: "Dave", 
            last_name: "Kosbie", 
            department: "Computer Science")
        @prof3   = FactoryGirl.create(:professor, 
            first_name: "Ross", 
            last_name: "Mantle", 
            department: "Photography")
        @prof4   = FactoryGirl.create(:professor, 
            first_name: "Dave", 
            last_name: "Tepper", 
            department: "Business")
      
    end
    
    def destroy_professors
      @prof1.delete
      @prof2.delete
      @prof3.delete
      @prof4.delete 
    end

  end
end