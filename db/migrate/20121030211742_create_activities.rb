class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.decimal :scheduledclass
      t.decimal :scheduledsection
      t.decimal :unscheduled

      t.timestamps
    end
  end
end
