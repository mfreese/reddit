class AddsummaryToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :summary, :string
  end
end
