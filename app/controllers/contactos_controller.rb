##
# Handle messages sent via the "Contact Us" page.
class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end

  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      redirect_to root_path
    else
      logger.warn "Failed to save contacto #{@contacto.errors.full_messages}"
      # flash.now.alert = @contacto.errors.full_messages
      # puts "About to render new, alerts: #{alert}"
      render "new"
    end
  end

  private

  def contacto_params
    params.require(:contacto).permit(:asunto, :corre_ele, :mensaje)
  end
end
