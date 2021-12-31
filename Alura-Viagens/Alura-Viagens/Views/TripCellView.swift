//
//  TripCellView.swift
//  Alura-Viagens
//
//  Created by Marcos Lacerda on 31/12/21.
//

import SwiftUI

struct TripCellView: View {
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
        .listRowSeparator(.hidden)
    }
}

struct TripCellView_Previews: PreviewProvider {
    static var previews: some View {
        TripCellView(viagem: viagens[0])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
