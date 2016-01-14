class FormsController < ApplicationController
    
  def new
    @form = Form.new
  end


  def create
    @form = Form.new(allowed_params)
    if @form.save
      flash[:success] = 'Formularz wysłany'
      redirect_to root_url
    else
      render 'new'
    end
  end

    
     private
  
  def allowed_params
    params.require(:form).permit(:opis, :kategoria, :email)
  end

end
