ActiveSupport::Inflector.inflections(:es) do |inflect|
  inflect.plural /$/, 's'
  inflect.plural /([^aeioué])$/, '\1es'
  inflect.plural /([aeiou]s)$/, '\1'
  inflect.plural /z$/, 'ces'
  inflect.plural /á([sn])$/, 'a\1es'
  inflect.plural /í([sn])$/, 'i\1es'
  inflect.plural /ó([sn])$/, 'o\1es'
  inflect.plural /ú([sn])$/, 'u\1es'
  # inflect.plural(/^(\w+)\s(.+)$/, lambda { |match|
  #                  head, tail = match.split(/\s+/, 2)
  #                  "#{head.pluralize} #{tail}"
  #                })

  inflect.singular /s$/, ''
  inflect.singular /es$/, ''
  # inflect.singular(/^(\w+)\s(.+)$/, lambda { |match|
  #                    head, tail = match.split(/\s+/, 2)
  #                    "#{head.singularize} #{tail}"
  #                  })

  inflect.irregular('papá', 'papás')
  inflect.irregular('mamá', 'mamás')
  inflect.irregular('sofá', 'sofás')
end
