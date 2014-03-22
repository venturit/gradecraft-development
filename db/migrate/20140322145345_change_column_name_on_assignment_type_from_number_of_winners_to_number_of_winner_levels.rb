class ChangeColumnNameOnAssignmentTypeFromNumberOfWinnersToNumberOfWinnerLevels < ActiveRecord::Migration
  def change
  	rename_column :assignment_types, :num_winners, :num_winner_levels
  end
end
