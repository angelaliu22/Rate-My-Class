require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  #Test Relationships    
    should have_many(:reviewer)
    should belong_to(:school)
    should have_many(:reviewer)
    
    #Test Validations with matchers
    should validate_presence_of(:start_date)
    should validate_presence_of(:end_date)

    #Test Validations with values
    should allow_value(10.days.ago).for(:start_date)
    should allow_value(10.days.ago).for(:end_date)

    should_not allow_value(10).for(:start_date)
    should_not allow_value(10).for(:end_date)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_enrollments
    end
    
    teardown do
        destroy_enrollments
    end

      should "show that the active and inactive scopes work " do
          assert_equal [3.days.ago.to_date, 1.month.ago.to_date], Enrollment.active.all.map(&:start_date).sort
          assert_equal [10.days.ago.to_date, 1.month.ago.to_date], Enrollment.inactive.all.map(&:start_date).sort
    end

    #TODO
      should "ensure end_date is not before start_date" do
          #Factorygirl
      end
  end
end
