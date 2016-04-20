require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
    #Test Relationships    
    should have_many(:professorships)
    should have_many(:klasses)
    
    #Test Validations with matchers


    #Test Validations with values
    should allow_value("Dave").for(:first_name)
    should allow_value("Waters").for(:last_name)
    should allow_value("Psych").for(:department)

    should_not allow_value(10).for(:first_name)
    should_not allow_value(10).for(:last_name)
    should_not allow_value(34).for(:department)
    
    # set up context
  context "Within context" do
    setup do 
        create_professors
    end
    
    teardown do
        destroy_professors
    end

    should "show that the alphabetical scope works" do
        assert_equal ["Dabbish", "Kosbie", "Mantle", "Tepper"], Professor.alphabetical.all.map(&:last_name)
    end
      
      should "test name method" do
          #TODO
          #Factorygirl
      end
      
      should "test proper_name method" do
          #TODO
          #Factorygirl
      end
  end
end
