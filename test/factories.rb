FactoryGirl.define do
    factory :course do
        association :school
        name "Application Design and Development"
        description "Ruby on Rails, MVC, Design, Databases."
        number "67-272"
        units 9
        start_date 2.years.ago.to_date
        end_date nil
  end

    factory :review do
        association :reviewer
        association :klass
        date 10.days.ago.to_date
        overall_rating 5
        helpfulness_rating 5
        workload_rating 5
        reviewer_rating 5
  end
  
    factory :reviewer do
        username "username"
        password "password"
        major "HCI"
        year 2016
  end

    factory :klass do
        association :professor
        association :course
        semester "Fall"
        year 2016
        enrollment_size 100
  end

    factory :professor do
        first_name "John"
        last_name "Appleseed"
        departmnet "HCI"
  end

    factory :professorship do
        association :professor
        association :school
        start_date 4.years.ago.to_date
        end_date nil
  end

    factory :school do
        name "Carnegie Mellon University"
        address "5000 Forbes Ave, Pittsburgh PA 15213"
  end

    factory :enrollment do
        association :reviewer
        association :school
        start_date 1.year.ago.to_date
        end_date nil
  end

end