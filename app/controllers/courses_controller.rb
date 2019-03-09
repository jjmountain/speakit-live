class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @lesson = Lesson.new(course_id: params[:id])
  end
end
