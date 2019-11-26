class CommentsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to course_path(@course), notice: 'Post failed...' }
      end
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @comment = Comment.find(params[:id])
    @comment.destroy!
    params[:id] = @course.id
    respond_to do |format|
      format.html {redirect_to course_url(id: params[:id])}
      format.js 
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:course_id,:description)
  end
end
