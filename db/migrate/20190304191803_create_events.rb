class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :time
      t.string :poc
      t.string :winner
      t.references :competition, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
