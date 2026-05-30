class AddExcludedToBudgetCategories < ActiveRecord::Migration[7.2]
  def change
    add_column :budget_categories, :excluded, :boolean, null: false, default: false
  end
end
