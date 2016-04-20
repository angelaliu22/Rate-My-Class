require 'test_helper'

class CourseTest < ActiveSupport::TestCase
    #Test Relationships    
    should have_one(:school)
    should have_many(:klasses)
    should belong_to(:school)
    should have_many(:reviews).through(:klasses)
    
    #Test Validations with matchers
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name).case_insensitive
    should validate_numericality_of(:units).only_integer.is_greater_than(0)
    should validate_inclusion_of(:semester).in_array(Course::SEMESTERS.to_h.values)

    #Test Validations with values
    should allow_value(10.days.ago).for(:start_date)
    should allow_value(10.days.ago).for(:end_date)
    should allow_value("Hello").for(:name)
    should allow_value(4).for(:units)
    should allow_value("35-888").for(:number)

    should_not allow_value(10).for(:start_date)
    should_not allow_value(10).for(:end_date)
    should_not allow_value(34).for(:name)
    should_not allow_value("3").for(:units)
    should_not allow_value(3.4).for(:units)
    should_not allow_value(-10).for(:units)
    should_not allow_value(54321).for(:number)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_courses
    end
    
    teardown do
        destroy_courses
    end

    should "show that the alphabetical scope works" do
        assert_equal ["Application Design and Development", "Cognitive Psychology", "User Centered Research and Evaluation"], Course.alphabetical.all.map(&:name)
    end

      should "show that the active and inactive scopes work " do
          assert_equal ["Application Design and Development", "User Centered Research and Evaluation"], Course.active.all.map(&:name).sort
          assert_equal ["Cognitive Psychology"], Course.inactive.all.map(&:name).sort
    end

    should "show that for_units scope works" do
        assert_equal ["Application Design and Development", "Cognitive Psychology"], Course.for_units(9).all.map(&:name).sort
        assert_equal ["User Centered Research and Evaluation"], Course.for_units(12).all.map(&:name).sort
    end
      
      #TODO
      should "ensure end_date is not before start_date" do
          #Factorygirl
      end

    #TODO
      should "return correct average overall rating" do
        
    end
    
    #TODO
      should "return correct average helpfullnes rating" do
        
    end
     
    #TODO
      should "return correct average workload rating" do
        
    end
      
    #TODO
      should "return correct average professor rating" do
        
    end
  end
end
