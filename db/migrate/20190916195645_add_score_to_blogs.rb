class AddScoreToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :score, :integer
  end
end
