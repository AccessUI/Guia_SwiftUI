import SwiftUI

/// Una vista que muestra la sección de canales seguidos y canales recomendados.
struct FollowingSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Título de la sección de canales seguidos
            Text("Siguiendo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .shadow(color: .gray, radius: 2, x: 4, y: 4)
                .accessibility(label: Text("Sección Siguiendo")) // Accesibilidad
            
            // Título de la sección de canales recomendados
            Text("CANALES RECOMENDADOS")
                .font(.title2)
                .fontWeight(.thin)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                .accessibility(label: Text("Sección de Canales Recomendados")) // Accesibilidad
            
            // Vista de fila de canal
            ChannelRow()
        }
    }
}

/// Una vista que muestra una fila de canal.
struct ChannelRow: View {
    var body: some View {
        HStack {
            // Icono del canal
            Rectangle()
                .foregroundColor(.cyan)
                .frame(width: 118, height: 68)
            
            VStack(alignment: .leading) {
                HStack {
                    // Icono de usuario
                    Circle()
                        .foregroundColor(.cyan)
                        .frame(width: 20, height: 20)
                        .fontWeight(.thin)
                    // Nombre de usuario del canal
                    Text("Nombre de usuario")
                        .font(.headline)
                }
                // Descripción del canal
                Text("Streaming de programación...")
                    .foregroundColor(.gray)
                Text("Solo Hablando")
                    .foregroundColor(.gray)
            }
        }
    }
}

/// La vista principal que contiene la sección de canales y el banner de documentación.
struct ContentView: View {
    var body: some View {
        ZStack {
            // Sección de canales
            FollowingSection()
            
            // Banner de documentación
            DocumentationBanner()
        }
    }
}

/// Un banner que muestra un llamado a la acción para leer la documentación.
struct DocumentationBanner: View {
    var body: some View {
        ZStack {
            // Fondo del banner
            Rectangle()
                .frame(width: 380, height: 100)
                .background(Color(.black))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .opacity(0.5)
                .rotationEffect(.degrees(-20.0), anchor: .center)
            
            // Texto del banner
            Text("Leé Documentación")
                .font(.largeTitle)
                .frame(width: 380, height: 100)
                .foregroundColor(.red)
                .fontWeight(.bold)
                .underline()
                .rotationEffect(.degrees(-20.0), anchor: .center)
        }
    }
}


// Previsualización de la vista en el lienzo de diseño.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
