require 'test_helper'

class ReviewerTest < ActiveSupport::TestCase
    #Test Relationships    
    should have_many(:reviews)
    should have_many(:enrollments)
    
    #Test Validations with matchers
    should validate_presence_of(:password)
    should validate_presence_of(:username)
    should validate_uniqueness_of(:username)
    should validate_numericality_of(:year).only_integer.is_greater_than(0)

    #Test Validations with values
    should allow_value("milothecat").for(:username)
    should allow_value("milothecat").for(:password)
    should allow_value("music").for(:major)
    should allow_value(2015).for(:year)

    should_not allow_value(10).for(:username)
    should_not allow_value(10).for(:password)
    should_not allow_value(34).for(:major)
    should_not allow_value("3").for(:year)
    should_not allow_value(3.4).for(:year)
    should_not allow_value(-10).for(:year)
    
    
    # set up context
  context "Within context" do
    setup do 
        create_reviewers
    end
    
    teardown do
        destroy_reviewers
    end

      should "show that num_classes_reviewed method works" do
        #TODO
    end
  end
end
