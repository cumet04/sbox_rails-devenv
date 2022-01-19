# frozen_string_literal: true

require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Without `title`, it isn't valid" do
    article = Article.new(body: "foobarbaz999", status: "public")
    article.title = nil
    assert_not article.valid?
  end

  test "public count" do
    assert Article.public_count == 0

    Article.create!(title: "hoge", body: "foobarbaz999", status: "public")
    assert Article.public_count == 1

    Article.create!(title: "hoge", body: "foobarbaz999", status: "private")
    assert Article.public_count == 1
  end
end
