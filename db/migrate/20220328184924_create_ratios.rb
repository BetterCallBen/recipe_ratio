class CreateRatios < ActiveRecord::Migration[6.0]
  def change
    create_table :ratios do |t|
      t.integer :number_of_people
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
