class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.integer :media_type
      t.string :media_name
      t.integer :rating
      t.text :review
      t.integer :status

      t.timestamps
    end
  end
end
