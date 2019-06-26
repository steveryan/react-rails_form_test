class HybridPostsController < ApplicationController
  before_action :set_hybrid_post, only: [:show, :edit, :update, :destroy]

  # GET /hybrid_posts
  # GET /hybrid_posts.json
  def index
    @hybrid_posts = HybridPost.all
  end

  # GET /hybrid_posts/1
  # GET /hybrid_posts/1.json
  def show
  end

  # GET /hybrid_posts/new
  def new
    @hybrid_post = HybridPost.new
  end

  # GET /hybrid_posts/1/edit
  def edit
  end

  # POST /hybrid_posts
  # POST /hybrid_posts.json
  def create
    @hybrid_post = HybridPost.new(hybrid_post_params)

    respond_to do |format|
      if @hybrid_post.save
        format.html { redirect_to @hybrid_post, notice: 'Hybrid post was successfully created.' }
        format.json { render :show, status: :created, location: @hybrid_post }
      else
        format.html { render :new }
        format.json { render json: @hybrid_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hybrid_posts/1
  # PATCH/PUT /hybrid_posts/1.json
  def update
    respond_to do |format|
      if @hybrid_post.update(hybrid_post_params)
        format.html { redirect_to @hybrid_post, notice: 'Hybrid post was successfully updated.' }
        format.json { render :show, status: :ok, location: @hybrid_post }
      else
        format.html { render :edit }
        format.json { render json: @hybrid_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hybrid_posts/1
  # DELETE /hybrid_posts/1.json
  def destroy
    @hybrid_post.destroy
    respond_to do |format|
      format.html { redirect_to hybrid_posts_url, notice: 'Hybrid post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hybrid_post
      @hybrid_post = HybridPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hybrid_post_params
      params.require(:hybrid_post).permit(:title, :content)
    end
end
