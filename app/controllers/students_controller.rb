class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @lesson = Lesson.find(params[:lesson_id])
    @course = Course.find(@lesson.course_id)
  end
end
