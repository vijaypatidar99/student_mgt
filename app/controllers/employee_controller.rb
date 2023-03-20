class EmployeeController < ApplicationController

    def index
      @employees = Employee.all
    end
  
    def show
      #byebuE
      @employee = Employee.find(params[:id])
      # render json: @
  
      # respond_to do |format|
      #   format.html
      #   format.pdf { render pdf: generate_pdf(@employee) }
      # end
    end
  
    def new
      @employee = Employee.new
    end
  
    def edit
      @employee = Employee.find(params[:id])
    end
  
    def post
      @employee = employee.find(params[:id])
    end
  
    def update
      @employees = Employee.find(params[:id])
      if @employees.update(employee_params)
        redirect_to welcome_index3_path
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def posts
      @employee = Employee.find(params[:employee_id])
      @posts = @employee.posts
    end
  
    def comment
      @posts = Post.find(params[:employee_id])
      @comments = @posts.comments
    end
  
    def destroy
      @employee = Employee.find(params[:id])
      @employee.destroy
  
      redirect_to employees_path
    end
  
    def create
      @employee = Employee.new(
        first_name: params[:employee][:first_name],
        last_name: params[:employee][:last_name],
        email: params[:employee][:email],
        mob_number: params[:employee][:mob_number],
      )
      if @employee.save
        redirect_to employees_path
      else
        render new
      end
    end
  
    private
  
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :mob_number)
    end
  end
  

