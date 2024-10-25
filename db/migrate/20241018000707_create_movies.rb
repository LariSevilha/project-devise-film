class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :descript
      t.date :release_year

      t.timestamps
    end
  end
end
