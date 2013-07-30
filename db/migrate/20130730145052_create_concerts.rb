class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.references :venue
      t.string :artist_name
      t.datetime :performing_on

      t.timestamps
    end
    add_index :concerts, :venue_id
  end
end
