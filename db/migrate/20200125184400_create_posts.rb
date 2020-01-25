class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table (:posts) do |t|
      t.column(:title, :string)
      t.column(:content_body, :string)
      t.column(:date, :string)
      #will eventually add photos to each blog post
      #will perhaps eventually add a tag to each blog post
      t.timestamps()
    end
  end
end
