class ArticlesController < ApplicationController
    include ArticlesHelper
    def show
        @articles = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to article_path(@article)
    end
end
