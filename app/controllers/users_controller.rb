class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    user_type = params[:type] if params[:type]
    render :file => "#{Rails.root}/public/404.html",  :status => 404 if user_type && !['Patient','Doctor'].include?(user_type) 
    @title = 'Users'
    if user_type
      @users = User.where(type: user_type)
      @title = user_type
    else
      @users = User.all
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @title = params[:type] if params[:type]
  end

  # GET /users/new
  def new
    @title = params[:type] if params[:type]
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @title = params[:type] if params[:type]
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_path(@user, type: @user.class.name), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_path(@user, type: @user.class.name), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      key = ''
      key = 'user' if params['user']
      key = 'admin' if params['admin']
      key = 'patient' if params['patient']
      key = 'doctor' if params['doctor']
      params.require(key).permit(:email, :name, :uid, :avatar_url, :type, :hospital)
    end
end
