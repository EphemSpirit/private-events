class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    drop_table :events
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
