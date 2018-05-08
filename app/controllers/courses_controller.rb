class CoursesController < ApplicationController
    def index
      @course = Course.find_by_id(params[:course_id])
      @instructor = @course.instructor
    end
end
