class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

 def show
  @article = Article.find(params[:id])
  render json: @article
 end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to "/articles"
    else
      redirect_to new_article_path, alert: @article.errors.full_messages
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end

  # snippet for brevity
