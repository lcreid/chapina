require 'test_helper'

class EncuestaTest < ActiveSupport::TestCase
  test "validations" do
    encuesta = Encuesta.create
    assert_equal [
      "Corre ele no puede estar en blanco",
      "Provincia no puede estar en blanco"
    ],
      encuesta.errors.full_messages
  end
end
