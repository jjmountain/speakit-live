class AttendancesController < ApplicationController

  def create
    @attendance = Attendance.new
    @attendance.lesson = Lesson.find(params[:lesson_id])
    @attendance.student = current_student
    @attendance.save!
  end
end
