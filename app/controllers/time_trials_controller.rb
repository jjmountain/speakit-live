class TimeTrialsController < ApplicationController

  def create
    @time_trial = TimeTrial.new(lesson_id: params[:lesson_id])
    @attendances = Lesson.find(params[:lesson_id]).attendances

    # new_pairing(@attendances)
    # attendance

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

  # def new_pairing(attendances)

  # end

  def show
    @time_trial = TimeTrial.find(params[:id])
    @mistake = Mistake.new(time_trial_id: params[:id])
  end

  def update
    @time_trial = TimeTrial.find(params[:id])
    # if no time trial audio is present
    # pop up javascript alert asking the user if they are sure they want to proceed
    # if audio is present then
    @time_trial.update(time_trial_params)
    if @time_trial.audio.url && @time_trial.seconds
      @time_trial.completed = true
      @time_trial.save
      flash[:notice] = "Audio submitted and conversation round complete."
      redirect_to lesson_path(@time_trial.lesson)
    elsif @time_trial.audio.url.nil?
      flash[:alert] = "No audio."
      render 'time_trials/show'
    end
  end

  def update_audio
    @time_trial = TimeTrial.find(params[:id])
    if @time_trial.update(time_trial_params)
      redirect_to lesson_path(@time_trial.lesson)
    else
      flash[:alert] = "Audio upload failed"
      render 'time_trials/show'
    end
  end

  def update_seconds
    @time_trial = TimeTrial.find(params[:id])
    @time_trial.update(time_trial_params)
    render body: nil, status: :no_content
  end

  def reset_trial
    @time_trial = TimeTrial.find(params[:id])
    @time_trial.seconds = nil
    @time_trial.started_at = Time.now
    @time_trial.mistakes.destroy_all
    @time_trial.save
    redirect_to lesson_time_trial_path(@time_trial)
  end

  def start
    @time_trial = TimeTrial.find(params[:id])
    @time_trial.started_at = Time.now
    @time_trial.save
    render body: nil, status: :no_content
  end

  private

  def time_trial_params
    params.require(:time_trial).permit(:audio, :seconds, :completed)
  end

end
