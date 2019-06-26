class RailsPostsController < ApplicationController
  before_action :set_rails_post, only: [:show, :edit, :update, :destroy]

  # GET /rails_posts
  # GET /rails_posts.json
  def index
    @rails_posts = RailsPost.all
  end

  # GET /rails_posts/1
  # GET /rails_posts/1.json
  def show
  end

  # GET /rails_posts/new
  def new
    @rails_post = RailsPost.new
  end

  # GET /rails_posts/1/edit
  def edit
  end

  # POST /rails_posts
  # POST /rails_posts.json
  def create
    @rails_post = RailsPost.new(rails_post_params)

    respond_to do |format|
      if @rails_post.save
        format.html { redirect_to @rails_post, notice: 'Rails post was successfully created.' }
        format.json { render :show, status: :created, location: @rails_post }
      else
        format.html { render :new }
        format.json { render json: @rails_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rails_posts/1
  # PATCH/PUT /rails_posts/1.json
  def update
    respond_to do |format|
      if @rails_post.update(rails_post_params)
        format.html { redirect_to @rails_post, notice: 'Rails post was successfully updated.' }
        format.json { render :show, status: :ok, location: @rails_post }
      else
        format.html { render :edit }
        format.json { render json: @rails_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rails_posts/1
  # DELETE /rails_posts/1.json
  def destroy
    @rails_post.destroy
    respond_to do |format|
      format.html { redirect_to rails_posts_url, notice: 'Rails post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rails_post
      @rails_post = RailsPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rails_post_params
      params.require(:rails_post).permit(:title, :content)
    end
end
