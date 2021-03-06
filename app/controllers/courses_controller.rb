class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :create_only_if_admin, only: [:create, :new, :destroy, :update,:edit]

  def index
    @q = Course.ransack(params[:q])
    @courses = @q.result(distinct: true).page(params[:page])
  end

  def show
    @comments = @course.comments
    @comment = @course.comments.build
    @payments=Payment.all
  end

  def new
    @course = Course.new
  end

  def edit
  end
  def create
    @course = current_user.courses.build(course_params)
      if @course.save
        redirect_to @course, notice: 'Course was successfully created.'
      else
        render :new
      end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
      redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :price, :clip, :thumbnail,:user_id)
  end
  def create_only_if_admin
    if current_user.user_type == "learner"
      redirect_to courses_url, notice: 'You are not allowed to do this action'
    end
  end
end
P