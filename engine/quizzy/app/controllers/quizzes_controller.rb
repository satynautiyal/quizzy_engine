class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ show edit update destroy ]
  layout "application-engine"
  # GET /quizzes or /quizzes.json
  def index
    @quizzes = Quiz.all.order('created_at')
  end

  # GET /quizzes/1 or /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes or /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to quizzes_path, notice: "Quiz was successfully created." }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  def activate_quiz
    Quiz.update_all(active: 0)
    Quiz.find(params[:quiz_id]).update(active: 1)
  end

  # PATCH/PUT /quizzes/1 or /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to quizzes, notice: "Quiz was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1 or /quizzes/1.json
  def destroy
    @quiz.destroy

    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: "Quiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def show_student_list
    @students=User.where(role: "student")
    @active_quiz=Quiz.where(active: true)
    @types=TypeOfQuiz.where(quiz_id: @active_quiz.first.id)
  end

  def check_user_block
    @allow_student=AllowStudent.where(type_of_quiz_id: params[:type_of_quiz_id], user_id: params[:student_id])
    respond_to do |format|
      format.js 
    end
  end

  def block_unblock_user
    @allow_student=AllowStudent.where(type_of_quiz_id: params[:type_of_quiz_id], user_id: params[:student_id].to_i)
    if @allow_student.length == 0
      AllowStudent.create(type_of_quiz_id: params[:type_of_quiz_id], user_id: params[:student_id].to_i,block: params[:block].to_i)
    else
      @allow_student.update(block: params[:block].to_i)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_params
      params.require(:quiz).permit(:title, :description)
    end
end
