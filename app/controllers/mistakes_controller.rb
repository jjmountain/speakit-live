class MistakesController < ApplicationController

  def create
    @mistake = Mistake.new(mistake_params)
    @time_trial = @mistake.time_trial
    @mistake.save
    # binding.pry
    render 'create.js.erb'
  end

  private

  def mistake_params
    params.require(:mistake).permit(:category, :time_trial_id)
  end
end
