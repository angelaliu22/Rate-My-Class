require 'test_helper'

class ProfessorshipTest < ActiveSupport::TestCase
      #Test Relationships    
    should have_one(:school)
    should have_one(:professor)
    should belong_to(:school)
    should belong_to(:professor)
    
    #Test Validations with matchers

    #Test Validations with values
    should allow_value(10.days.ago).for(:start_date)
    should allow_value(10.days.ago).for(:end_date)

    should_not allow_value(10).for(:start_date)
    should_not allow_value(10).for(:end_date)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_professorships
    end
    
    teardown do
        destroy_professorships
    end

      should "show that the active and inactive scopes work " do
          assert_equal [10.days.ago.to_date, 13.days.ago.to_date, 10.months.ago.to_date], Professorship.active.all.map(&:start_date).sort
          assert_equal [1.year.ago.to_date, 3.years.ago.to_date], Professorship.inactive.all.map(&:start_date).sort
    end

    should "validate start date is before end date " do
          #use factory girl
    end
  end
end
