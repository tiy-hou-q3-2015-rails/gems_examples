class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :photo_id

      t.timestamps null: false
    end
  end
end
