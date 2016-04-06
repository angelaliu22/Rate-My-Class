module Contexts
  module Schools
    # Context for addresses (assumes customer and user context)
    def create_schools
        @school1 = FactoryGirl.create(:school, 
            name: "Carnegie Mellon University", 
            address: "5000 Forbes Ave, Pittsburgh PA 15213")
        @school2 = FactoryGirl.create(:school, 
            name: "San Francisco State", 
            address: "1600 Holloway Ave, San Francisco, CA 94132")  
        @school3 = FactoryGirl.create(:school, 
            name: "George Washington University", 
            address: "2121 I St NW, Washington, DC 20052")  
    end
    
    def destroy_schools
      @school1.delete
      @school2.delete
      @school3.delete
    end

  end
end