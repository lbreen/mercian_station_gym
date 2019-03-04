class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.string :name
      t.text :description, default: ''
      t.string :current_winner, default: ''
      t.string :image, default: 'bfc_crest.jpg'
      t.boolean :contain_image, default: false

      t.timestamps
    end
  end
end
