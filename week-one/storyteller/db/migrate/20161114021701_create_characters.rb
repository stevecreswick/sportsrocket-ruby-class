class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.references :story_teller, foreign_key: true

      t.timestamps
    end
  end
end
