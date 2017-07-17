##
# Helpers for generating the survey form.
module EncuestaHelper
  def yes_no_no_answer(f, method, question, options = {})
    class_option = options.delete(:class)
    capture do
      content = f.form_group :edad,
                  label: { text: question, class: "col-sm-8" },
                  class: "row #{class_option}" do
        content_tag :div, class: "col-sm-4" do
          safe_join [
            f.radio_button(method, 0, label: "No", inline: true),
            f.radio_button(method, 1, label: "Sí", inline: true),
            f.radio_button(method, nil, label: "Ninguna respuesta", inline: true)
          ], " "
        end
      end
    end
  end
end
