class AddRestrictFkOnBookmarksMovie < ActiveRecord::Migration[7.1]
  def change
    # supprime la FK existante si elle existe déjà
    remove_foreign_key :bookmarks, :movies if foreign_key_exists?(:bookmarks, :movies)

    # recrée une FK qui empêche la suppression d'un movie bookmarké
    add_foreign_key :bookmarks, :movies, on_delete: :restrict
  end
end
