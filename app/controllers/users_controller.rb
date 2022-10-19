class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    user = User.new(user_register_params)
    if user.save
      token = create_token(user.id)
      render json: {
        user: user.attributes.except("password_digest"),
        token: token,
      }, status: :created
    else
      render json: user.errors, status: 422
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # POST /users/login
  def login
    user = User.find_by(email: user_login_params[:email])

    if user && user.authenticate(user_login_params[:password])
      token = create_token(user.id)
      render json: {
        user: user.attributes.except("password_digest"),
        token: token,
      }, status: :ok
    else
      render json: {error: "unauthorized"}, status: :unauthorized
    end
  end

  # GET /users/verify
  def verify
    render json: @current_user.attributes.except("password_digest"), status: :ok
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :email, :image)
    end
    
    def create_token(id)
      payload = {id: id, exp: 24.hours.from_now.to_i}
      JWT.encode(payload, SECRET_KEY)
    end
end
