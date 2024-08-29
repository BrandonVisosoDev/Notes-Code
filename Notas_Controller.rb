require_relative 'nota'

# Definición de la clase NotasController
class NotasController
    # Variable de clase para almacenar todas las notas. Es una variable de clase compartida por todas las instancias de la clase.
    @@notas = []

    # Método de clase para crear una nueva nota
    def self.crear_nota
        # Solicita al usuario el título de la nota y lee la entrada desde la consola
        print "Ingrese el título de la nota: "
        titulo = gets.chomp
        # Solicita al usuario el contenido de la nota y lee la entrada desde la consola
        print "Ingrese el contenido de la nota: "
        contenido = gets.chomp
        # Crea una nueva instancia de Nota con el título y contenido proporcionados
        nota = Nota.new(titulo, contenido)
        # Añade la nueva nota a la lista de notas
        @@notas << nota
        # Muestra un mensaje confirmando la creación de la nota
        puts "Nota creada: #{nota.titulo}"
    end

    # Método de clase para leer y mostrar todas las notas
    def self.leer_notas
        # Verifica si la lista de notas está vacía
        if @@notas.empty?
            # Muestra un mensaje si no hay notas
            puts "No hay notas creadas"
        else
            # Itera sobre cada nota en la lista y muestra sus detalles
            @@notas.each do |nota|
                puts "Título: #{nota.titulo}"
                puts "Contenido: #{nota.contenido}"
                puts "Fecha de creación: #{nota.fecha_creacion}"
                puts "-----------------------------"
            end
        end
    end

    # Método de clase para actualizar una nota existente
    def self.actualizar_nota
        # Verifica si la lista de notas está vacía
        if @@notas.empty?
            # Muestra un mensaje si no hay notas
            puts "No hay notas creadas"
        else
            # Muestra una lista numerada de notas para que el usuario pueda seleccionar una
            puts "Seleccione la nota que desea actualizar:"
            @@notas.each_with_index do |nota, index|
                puts "#{index + 1}. #{nota.titulo}"
            end
            # Solicita al usuario que ingrese el número de la nota que desea actualizar
            print "Ingrese el número de la nota: "
            opcion = gets.chomp.to_i - 1
            # Verifica que la opción ingresada sea válida
            if opcion >= 0 && opcion < @@notas.size
                # Obtiene la nota seleccionada
                nota = @@notas[opcion]
                # Solicita al usuario el nuevo título y contenido para la nota
                print "Ingrese el nuevo título de la nota: "
                nuevo_titulo = gets.chomp
                print "Ingrese el nuevo contenido de la nota: "
                nuevo_contenido = gets.chomp
                # Actualiza el título y contenido de la nota
                nota.titulo = nuevo_titulo
                nota.contenido = nuevo_contenido
                # Muestra un mensaje confirmando la actualización de la nota
                puts "Nota actualizada: #{nota.titulo}"
            else
                # Muestra un mensaje si la opción ingresada no es válida
                puts "Opción inválida"
            end
        end
    end

    # Método de clase para eliminar una nota existente
    def self.eliminar_nota
        # Verifica si la lista de notas está vacía
        if @@notas.empty?
            # Muestra un mensaje si no hay notas
            puts "No hay notas creadas"
        else
            # Muestra una lista numerada de notas para que el usuario pueda seleccionar una
            puts "Seleccione la nota que desea eliminar:"
            @@notas.each_with_index do |nota, index|
                puts "#{index + 1}. #{nota.titulo}"
            end
            # Solicita al usuario que ingrese el número de la nota que desea eliminar
            print "Ingrese el número de la nota: "
            opcion = gets.chomp.to_i - 1
            # Verifica que la opción ingresada sea válida
            if opcion >= 0 && opcion < @@notas.size
                # Elimina la nota seleccionada de la lista
                nota = @@notas.delete_at(opcion)
                # Muestra un mensaje confirmando la eliminación de la nota
                puts "Nota eliminada: #{nota.titulo}"
            else
                # Muestra un mensaje si la opción ingresada no es válida
                puts "Opción inválida"
            end
        end
    end
end
