class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    drop_table :attendances
    create_table :attendances do |t|

      t.timestamps
    end
  end
end
