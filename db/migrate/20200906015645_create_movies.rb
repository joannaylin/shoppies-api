class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year_of_release
      t.integer :user_id
      t.string :imdb_id

      t.timestamps
    end
  end
end
