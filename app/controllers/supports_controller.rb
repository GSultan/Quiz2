class SupportsController < ApplicationController
  def index
    if params[:search]
      @supports = Support.search(params[:search])
    else
      @supports = Support.order(created_at: :desc)
    end
    @supports = Support.page(params[:page]).per(7)
  end

  def search
  end

  def new
    @support = Support.new
  end

  def create
    support_params = params.require(:support).permit([:name, :email, :message, :department])
    @support = Support.new support_params
    if @support.save
      # redirect_to question_path({id: @question.id})
      # redirect_to question_path({id: @question})
      redirect_to supports_path(@support)
    else
      render :new
    end
  end



  def show
    @support = Support.find params[:id]
  end

  def edit
    @support = Support.find params[:id]
  end

  def update
    @support = Support.find params[:id]
    support_params = params.require(:support).permit([:name, :email, :message, :department])
    if @support.update support_params
      redirect_to support_path(@support)
    else
      render :edit
    end
  end

  def destroy
    @support = Support.find params[:id]
    @support.destroy
    redirect_to supports_path
  end

  def toggle_done
    support = Support.find params[:id]
    support.toggle_done
    redirect_to supports_path
  end



end
