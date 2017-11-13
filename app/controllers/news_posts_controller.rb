class NewsPostsController < OpenReadController
  before_action :set_news_post, only: [:show, :update, :destroy]

  # GET /news_posts
  def index
    @news_posts = NewsPost.all

    render json: @news_posts
  end

  # GET /news_posts/1
  def show
    render json: @news_post
  end

  # POST /news_posts
  def create
    @news_section = NewsSection.first
    @news_post = @news_section.news_posts.create(news_post_params)

    if @news_post.save
      render json: @news_post, status: :created, location: @news_post
    else
      render json: @news_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_posts/1
  def update
    if @news_post.update(news_post_params)
      render json: @news_post
    else
      render json: @news_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_posts/1
  def destroy
    @news_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_post
      @news_post = NewsPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_post_params
      params.require(:news_post).permit(:title, :title_vn, :description, :description_vn, :newsDate)
    end
end
