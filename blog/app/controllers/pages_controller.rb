class PagesController < ApplicationController
  def index
    @article = Article.last
  end

  def about
  end

  def contact
  end
end
