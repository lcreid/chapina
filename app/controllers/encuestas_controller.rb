class EncuestasController < ApplicationController
  def new
    @encuesta = Encuesta.new
  end
end
