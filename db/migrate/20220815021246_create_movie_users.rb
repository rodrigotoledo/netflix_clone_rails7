class CreateMovieUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_users do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rating
      t.string :status
      t.float :timming, default: 0

      t.timestamps
    end
  end
end
