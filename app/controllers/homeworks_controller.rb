class HomeworksController < ApplicationController

  def update
    @homework = Homework.find(params[:id])
    @homework.update(homework_params)

    respond_to do |format|
      format.html { redirect_to lesson_path(@homework.mistake.time_trial.lesson) }
      format.js
    end
  end

  private

  def homework_params
    params.require(:homework).permit( :comment, :student_id, :mistake_id, :approved, :teacher_feedback)
  end

end
