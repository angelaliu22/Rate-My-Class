require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  #Test Relationships    
    should belong_to(:reviewer)
    should belong_to(:klass)
    should have_one(:course).through(:klass)
    
    #Test Validations with matchers
    should validate_presence_of(:overall_rating)
    should validate_presence_of(:helpfulness_rating)
    should validate_presence_of(:workload_rating)
    should validate_presence_of(:professor_rating)

    #Test Validations with values
    should allow_value(10.days.ago).for(:date)
    should allow_value(2).for(:overall_rating)
    should allow_value(2).for(:helpfulness_rating)
    should allow_value(2).for(:workload_rating)
    should allow_value(2).for(:professor_rating)


    should_not allow_value(3).for(:date)
    should_not allow_value(-1).for(:overall_rating)
    should_not allow_value(-1).for(:helpfulness_rating)
    should_not allow_value(-1).for(:workload_rating)
    should_not allow_value(-1).for(:professor_rating)
    
    should_not allow_value("hi").for(:overall_rating)
    should_not allow_value("hi").for(:helpfulness_rating)
    should_not allow_value("hi").for(:workload_rating)
    should_not allow_value("hi").for(:professor_rating)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_reviews
    end
    
    teardown do
        destroy_reviews
    end

    should "show that the chronological scope works" do
        assert_equal [4.days.ago.to_date, 10.days.ago.to_date, 1.month.ago.to_date, 10.months.ago.to_date], Review.chronological.all.map(&:date)
    end

      should "show that the for_class scopes works " do
          assert_equal [2, 5], Course.for_class(@klass1).all.map(&:workload_rating).sort
    end
  end
end
