import SwiftUI

/// Vista principal que muestra un saludo simple y una imagen de iPhone.
struct ContentView: View {
    var body: some View {
        VStack {
            // Imagen del sistema con el icono de iPhone
            Image(systemName: "iphone")
                .resizable() // Permite redimensionar la imagen
                .aspectRatio(contentMode: .fit) // Ajusta la imagen para mantener su relación de aspecto
                .frame(width: 100, height: 100) // Establece el tamaño de la imagen
                .foregroundColor(.blue) // Cambiar el color de la imagen a azul
                .padding(.bottom, 20) // Agrega espacio en la parte inferior de la imagen
                .shadow(color: .gray, radius: 2, x: 4, y: 4) // Agrega una sombra suave a la imagen
            
            // Texto de saludo
            Text("¡Hola, mundo!")
                .font(.largeTitle) // Utilizar un tamaño de fuente más grande
                .fontWeight(.bold) // Añadir negrita para resaltar el texto
                .foregroundColor(.primary) // Utilizar el color de texto por defecto del sistema
                .multilineTextAlignment(.center) // Alinea el texto al centro
                .padding(.horizontal, 20) // Agrega espacio horizontal alrededor del texto
                .padding(.bottom, 20) // Agrega espacio en la parte inferior del texto
                .shadow(color: .gray, radius: 2, x: 4, y: 4) // Agrega una sombra suave al texto
        }
        .padding() // Añadir un espacio alrededor de la VStack
        .background(Color.mint) // Añadir un fondo blanco a la vista principal
        .cornerRadius(10) // Agregar esquinas redondeadas a la vista principal
    }
}

/// Vista previa para la vista ContentView.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light) // Utilizar el esquema de color claro para la vista previa
    }
}
