class EncuestasController < ApplicationController
  def create
    @encuesta = Encuesta.new(encuesta_params)
    if @encuesta.save
      redirect_to root_path
    else
      logger.warn "Failed to save encuesta #{@encuesta.errors.full_messages}"
      # flash.now.alert = @encuesta.errors.full_messages
      # puts "About to render new, alerts: #{alert}"
      render "new"
    end
  end

  def new
    @encuesta = Encuesta.new
  end

  private

  def encuesta_params
    params.require(:encuesta).permit(:corre_ele,
      :primer_nombre,
      :segundo_nombre,
      :primer_apellido,
      :segundo_apellido,
      :corre_ele,
      :provincia,
      :edad,
      :votaria,
      :dpi,
      :pasaporte,
      :servicios)
  end
end
