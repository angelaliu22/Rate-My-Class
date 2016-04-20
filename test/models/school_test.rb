require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
    #Test Relationships    
    should have_many(:professorships)
    should have_many(:enrollments)
    
    #Test Validations with matchers    

    #Test Validations with values
    should allow_value("CMU").for(:name)
    should allow_value("123 Morewood Ave").for(:address)

    should_not allow_value(10).for(:name)
    should_not allow_value(10).for(:address)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_schools
    end
    
    teardown do
        destroy_schools
    end

      should "show that the num_classes_rated method works" do
         #TODO
    end

      should "show that the num_professors_rated works " do
          #TODO
    end
  end
end
