class AddAgeToCows < ActiveRecord::Migration
  def change
    add_column :cows, :age_in_years, :integer
  end
end
