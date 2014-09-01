class StateCoursesController < ApplicationController
  before_action :set_state_course, only: [:show, :edit, :update, :destroy]

  # GET /state_courses
  # GET /state_courses.json
  def index
    @state_courses = StateCourse.all
  end

  # GET /state_courses/1
  # GET /state_courses/1.json
  def show
  end

  # GET /state_courses/new
  def new
    @state_course = StateCourse.new
  end

  # GET /state_courses/1/edit
  def edit
  end

  # POST /state_courses
  # POST /state_courses.json
  def create
    @state_course = StateCourse.new(state_course_params)

    respond_to do |format|
      if @state_course.save
        format.html { redirect_to @state_course, notice: 'State course was successfully created.' }
        format.json { render :show, status: :created, location: @state_course }
      else
        format.html { render :new }
        format.json { render json: @state_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_courses/1
  # PATCH/PUT /state_courses/1.json
  def update
    respond_to do |format|
      if @state_course.update(state_course_params)
        format.html { redirect_to @state_course, notice: 'State course was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_course }
      else
        format.html { render :edit }
        format.json { render json: @state_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_courses/1
  # DELETE /state_courses/1.json
  def destroy
    @state_course.destroy
    respond_to do |format|
      format.html { redirect_to state_courses_url, notice: 'State course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_course
      @state_course = StateCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_course_params
      params.require(:state_course).permit(:name)
    end
end
