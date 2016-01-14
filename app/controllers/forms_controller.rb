class FormsController < ApplicationController
    
  def new
    @form = Form.new
  end


  def create
    @form = Form.new(allowed_params)
    if @form.save
      redirect_to root_url, notice: 'Form is valid'
    else
      render 'new', notice: 'Form is invalid'
    end
  end
  
  def edit #display for for existing record
    @form = Form.find(params[:id])
  end
  
  def update #save changes    #no template
    @form = Form.find(params[:id])
    if @form.update_attributes(allowed_params)
      flash[:info] = "Formularz został poprawiony i wysłany ponownie."
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
