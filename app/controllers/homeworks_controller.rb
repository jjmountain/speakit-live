class HomeworksController < ApplicationController

  def update
    @homework = Homework.find(params[:id])
    @homework.update(homework_params)
    redirect_to lesson_path(@homework.mistake.time_trial.lesson)
  end

  private

  def homework_params
    params.require(:homework).permit( :comment, :student_id, :mistake_id, :approved)
  end

end
