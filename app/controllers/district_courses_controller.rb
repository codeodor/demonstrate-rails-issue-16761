class DistrictCoursesController < ApplicationController
  before_action :set_district_course, only: [:show, :edit, :update, :destroy]

  # GET /district_courses
  # GET /district_courses.json
  def index
    @district_courses = DistrictCourse.all
  end

  # GET /district_courses/1
  # GET /district_courses/1.json
  def show
  end

  # GET /district_courses/new
  def new
    @district_course = DistrictCourse.new
  end

  # GET /district_courses/1/edit
  def edit
  end

  # POST /district_courses
  # POST /district_courses.json
  def create
    @district_course = DistrictCourse.new(district_course_params)

    respond_to do |format|
      if @district_course.save
        format.html { redirect_to @district_course, notice: 'District course was successfully created.' }
        format.json { render :show, status: :created, location: @district_course }
      else
        format.html { render :new }
        format.json { render json: @district_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /district_courses/1
  # PATCH/PUT /district_courses/1.json
  def update
    respond_to do |format|
      if @district_course.update(district_course_params)
        format.html { redirect_to @district_course, notice: 'District course was successfully updated.' }
        format.json { render :show, status: :ok, location: @district_course }
      else
        format.html { render :edit }
        format.json { render json: @district_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /district_courses/1
  # DELETE /district_courses/1.json
  def destroy
    @district_course.destroy
    respond_to do |format|
      format.html { redirect_to district_courses_url, notice: 'District course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_course
      @district_course = DistrictCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def district_course_params
      params.require(:district_course).permit(:name, :subject_id, :district_id, :state_course_id)
    end
end
