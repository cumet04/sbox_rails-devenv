# frozen_string_literal: true

require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Without `title`, it isn't valid" do
    article = Article.new(body: "foobarbaz999", status: "public")
    article.title = nil
    assert_not article.valid?
  end
end
