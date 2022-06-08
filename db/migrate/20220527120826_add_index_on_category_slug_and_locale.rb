class AddIndexOnCategorySlugAndLocale < ActiveRecord::Migration[6.1]
  def change

    add_column :categories, :slug, :string, null: false
    add_index :categories, [:slug, :locale, :portal_id], unique: true
  end
end
