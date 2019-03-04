class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.time :time
      t.string :poc
      t.references :competition, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
