class ReactPostsController < ApplicationController
  before_action :set_react_post, only: [:show, :edit, :update, :destroy]

  # GET /react_posts
  # GET /react_posts.json
  def index
    @react_posts = ReactPost.all
  end

  # GET /react_posts/1
  # GET /react_posts/1.json
  def show
  end

  # GET /react_posts/new
  def new
    @react_post = ReactPost.new
  end

  # GET /react_posts/1/edit
  def edit
  end

  # POST /react_posts
  # POST /react_posts.json
  def create
    @react_post = ReactPost.new(react_post_params)

    respond_to do |format|
      if @react_post.save
        format.html { redirect_to @react_post, notice: 'React post was successfully created.' }
        format.json { render :show, status: :created, location: @react_post }
      else
        format.html { render :new }
        format.json { render json: @react_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /react_posts/1
  # PATCH/PUT /react_posts/1.json
  def update
    respond_to do |format|
      if @react_post.update(react_post_params)
        format.html { redirect_to @react_post, notice: 'React post was successfully updated.' }
        format.json { render :show, status: :ok, location: @react_post }
      else
        format.html { render :edit }
        format.json { render json: @react_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /react_posts/1
  # DELETE /react_posts/1.json
  def destroy
    @react_post.destroy
    respond_to do |format|
      format.html { redirect_to react_posts_url, notice: 'React post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_react_post
      @react_post = ReactPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def react_post_params
      params.require(:react_post).permit(:title, :content)
    end
end
