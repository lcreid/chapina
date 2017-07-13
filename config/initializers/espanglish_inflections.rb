##
# Inflections required to make Rails work, because we're using Spanish
# words for models.
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular "encuesta", "encuestas"
end
