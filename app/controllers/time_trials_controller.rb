class TimeTrialsController < ApplicationController

  def create
    @time_trial = TimeTrial.new(lesson_id: params[:lesson_id])
    @attendances = Lesson.find(params[:lesson_id]).attendances

    @attendances.shuffle

    @attendance_a = @attendances.first
    @attendance_b = @attendances.last

    @time_trial.attendance_a = @attendance_a
    @time_trial.attendance_b = @attendance_b

    if @time_trial.save!
      redirect_to lesson_time_trial_path(params[:lesson_id], @time_trial)
    else
      redirect_to lesson_path(params[:lesson_id])
    end
  end

  def show
    @time_trial = TimeTrial.find(params[:id])
  end

  def update
    # binding.pry
    @time_trial = TimeTrial.find(params[:id])
    @time_trial.update(time_trial_params)
    redirect_to lesson_path(@time_trial.lesson)
  end

  private

  def time_trial_params
    params.require(:time_trial).permit(:audio, :seconds)
  end

end
