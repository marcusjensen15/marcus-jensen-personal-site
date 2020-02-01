require 'rails_helper'

describe Post do
  # Tests will go here.

  describe('.all') do
    it("returns an empty array when there are no posts") do
      expect(Post.all).to(eq([]))
    end
  end
  describe('.save') do
    it("Allows the user to create and save a new post") do
      @post = Post.new({:title => "Giant Steps", :date => 2000, :content_body => "bluegrass"})
      @post.save
      expect(Post.all).to(eq([@post]))
    end
  end
  describe('.delete') do
    it("Allows the user remove a post from the content library") do
      @post = Post.new({:title => "Giant Steps", :date => 2000, :content_body => "bluegrass"})
      @post.save
      @post.delete
      expect(Post.all).to(eq([]))
    end
  end

  describe('.update') do
    it("Allows the user to update a previous post") do
      @post = Post.new({:title => "Giant Steps", :date => 2000, :content_body => "bluegrass"})
      @post.save
      @post.update({:title => "Puppy Chow"})
      expect(@post.title).to(eq("Puppy Chow"))
    end
  end
end


# t.column(:title, :string)
# t.column(:content_body, :string)
# t.column(:date, :string)
