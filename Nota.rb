# Definición de la clase Nota
class Nota
    # Define atributos accesibles y modificables desde fuera de la clase
    # Estos atributos son: título, contenido y fecha de creación
    attr_accessor :titulo, :contenido, :fecha_creacion

    # Método de inicialización que se ejecuta al crear una nueva instancia de Nota
    def initialize(titulo, contenido)
        # Asigna el valor del parámetro 'titulo' al atributo de instancia '@titulo'
        @titulo = titulo
        # Asigna el valor del parámetro 'contenido' al atributo de instancia '@contenido'
        @contenido = contenido
        # Asigna la fecha y hora actual al atributo de instancia '@fecha_creacion'
        # Utiliza el método 'Time.now' para obtener el momento exacto de la creación de la nota
        @fecha_creacion = Time.now
    end
end

