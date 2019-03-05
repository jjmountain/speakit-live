class AddDefaultToLesson < ActiveRecord::Migration[5.2]
  def change
    change_column_default :lessons, :completed, false
  end
end
