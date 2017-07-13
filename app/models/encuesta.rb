##
# Represents the original survey result.
class Encuesta < ApplicationRecord
  self.table_name = "encuestas"
  validates_presence_of :corre_ele, :provincia
end
