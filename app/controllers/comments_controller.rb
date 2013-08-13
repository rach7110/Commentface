class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    @comment = Comment.new

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @comment.save

    respond_to do |format|
      format.html { redirect_to root_url, flash: {success: 'Comment successfully created.'} }
      format.js { render :layout => false }
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])

    respond_to do |format|
      format.html { redirect_to @comment, notice: 'Comment successfully flip-flopped.' }
    end
  end

  # POST /comments/1/upvote
  # POST /comments/1/upvote.json
  def upvote
    @comment = Comment.find(params[:id])
    @comment.score += 1
    @comment.save

    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Comment happiness increased +1!' }
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Comment owner successfully mortified.' }
    end
  end
end
