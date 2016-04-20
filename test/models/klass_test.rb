require 'test_helper'

class KlassTest < ActiveSupport::TestCase
      #Test Relationships    
    should have_one(:professor)
    should have_one(:course)
    should belong_to(:professor)
    should belong_to(:course)
    
    #Test Validations with matchers
    should validate_numericality_of(:year).only_integer.is_greater_than(0)
    should validate_numericality_of(:enrollment_size).only_integer.is_greater_than(0)


    #Test Validations with values
    should allow_value(2015).for(:year)
    should allow_value(20).for(:enrollment_size)
    should allow_value("Fall").for(:semester)

    should_not allow_value(-9).for(:year)
    should_not allow_value(-2).for(:enrollment_size)
    should_not allow_value(4).for(:semester)
    
    should_not allow_value(10.2).for(:year)
    should_not allow_value(4.5).for(:enrollment_size)
    should_not allow_value("August").for(:semester)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_klasses
    end
    
    teardown do
        destroy_klasses
    end

    should "show that the chronological scope works" do
        #TODO
    end
  end
end
