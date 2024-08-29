require_relative 'notas_controller' # Importamos el archivo de funciones

# Comienza un bucle infinito que se ejecutará hasta que se rompa
loop do
    # Muestra el menú de opciones al usuario
    puts "1. Crear Nota"
    puts "2. Leer Notas"
    puts "3. Actualizar Nota"
    puts "4. Eliminar Nota"
    puts "5. Salir"

    # Solicita al usuario que ingrese una opción del menú
    print "Ingrese una opción: "    
    opcion = gets.chomp

    # Usa una estructura de control 'case' para manejar la opción ingresada
    case opcion 
    when "1"
        # Llama al método para crear una nota si la opción es "1"
        NotasController.crear_nota
    when "2"
        # Llama al método para leer las notas si la opción es "2"
        NotasController.leer_notas
    when "3"
        # Llama al método para actualizar una nota si la opción es "3"
        NotasController.actualizar_nota
    when "4"
        # Llama al método para eliminar una nota si la opción es "4"
        NotasController.eliminar_nota
    when "5"
        # Muestra un mensaje de despedida y rompe el bucle si la opción es "5"
        puts "Saliendo de la aplicación. ¡Hasta luego!"
        break
    else
        # Muestra un mensaje de error si la opción ingresada no es válida
        puts "Opción inválida, elige un número del 1 al 5."
    end
end


