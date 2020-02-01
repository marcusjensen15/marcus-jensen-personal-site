require 'rails_helper'

describe Post do
  # Tests will go here.

  describe('.all') do
    it("returns an empty array when there are no posts") do
      expect(Post.all).to(eq([]))
    end
  end
end
