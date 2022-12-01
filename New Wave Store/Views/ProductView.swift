//
//  ProductView.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 11/23/22.
//

import SwiftUI

struct ProductView: View {
    
    @Binding var product: Product
    
    var body: some View {
        HStack(alignment: .top) {
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(Constants.textFont)
                    .padding([.trailing, .leading])
                Text(String(format: "$%.2f", product.price))
                    .font(Constants.textFont)
                    .foregroundColor(Color.highlight)
                    .padding([.trailing, .leading])
                Spacer()
            }
            Spacer()
        }.padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Binding.constant(Product()))
    }
}

