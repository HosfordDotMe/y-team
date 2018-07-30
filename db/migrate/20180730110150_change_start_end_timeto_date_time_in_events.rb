class ChangeStartEndTimetoDateTimeInEvents < ActiveRecord::Migration[5.2]
  # change type did not work. due to existng data? Brute force method. EH
  def change
    remove_column :events, :start_time
    remove_column :events, :end_time
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
  end
end
