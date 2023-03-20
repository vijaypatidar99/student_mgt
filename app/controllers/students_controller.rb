class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    #byebug
    @student = Student.find(params[:id])
    # render json: @

    # respond_to do |format|
    #   format.html
    #   format.pdf { render pdf: generate_pdf(@student) }
    # end
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def post
    @student = Student.find(params[:id])
  end

  def update
    @students = Student.find(params[:id])
    if @students.update(student_params)
      redirect_to welcome_index3_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def posts
    @student = Student.find(params[:student_id])
    @posts = @student.posts
  end

  def comment
    @posts = Post.find(params[:student_id])
    @comments = @posts.comments
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end

  def create
    @student = Student.new(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      email: params[:student][:email],
      mob_number: params[:student][:mob_number],
    )
    if @student.save
      redirect_to students_path
    else
      render new
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :mob_number)
  end
end
