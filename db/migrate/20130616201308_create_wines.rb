class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.text :description
      t.integer :winery_id

      t.timestamps
    end
  end
end
