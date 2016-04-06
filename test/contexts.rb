# require needed files
require './test/sets/courses'
require './test/sets/reviews'
require './test/sets/reviewers'
require './test/sets/schools'
require './test/sets/professors'
require './test/sets/professorships'
require './test/sets/enrollments'
require './test/sets/klasses'

module Contexts
  # explicitly include all sets of contexts used for testing 
    include Contexts::Courses
    include Contexts::Reviews
    include Contexts::Reviewers
    include Contexts::Schools
    include Contexts::Professors
    include Contexts::Professorships
    include Contexts::Enrollments
    include Contexts::Klasses
end