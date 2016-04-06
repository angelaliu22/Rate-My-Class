module Contexts
  module Reviewers
    # Context for addresses (assumes customer and user context)
    def create_reviewers
        @reviewer1   = FactoryGirl.create(:reviewer, 
            username: "psychnerd", 
            password: "password", 
            major: "Pyschology", 
            year: 2012)
        @reviewer2   = FactoryGirl.create(:reviewer, 
            username: "greenapple", 
            password: "orange", 
            major: "Biological Science", 
            year: 2016)
        @reviewer3   = FactoryGirl.create(:reviewer, 
            username: "binary", 
            password: "0101", 
            major: "Computer Science", 
            year: 2012)
    end
    
    def destroy_reviewers
      @reviewer1.delete
      @reviewer2.delete
      @reviewer3.delete
    end

  end
end