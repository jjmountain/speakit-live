class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def show
    # binding.pry
    @lesson = Lesson.find(params[:id])
    @attendances = Attendance.where(lesson_id: @lesson.id)
    @time_trials = TimeTrial.where(lesson_id: @lesson.id)
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.teacher = current_teacher
    if @lesson.save!
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def update
  end

  private

  def lesson_params
    params.require(:lesson).permit( :learning_goal, :start_time, :time_goal, :teacher_id)
  end
end

