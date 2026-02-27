class AddUniqueIndexesToMoviesListsAndBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_index :movies, :title, unique: true
    add_index :lists, :name, unique: true
    add_index :bookmarks, [:movie_id, :list_id], unique: true
  end
end
