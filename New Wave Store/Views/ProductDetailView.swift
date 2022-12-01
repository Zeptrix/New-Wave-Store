//
//  ProductDetailView.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 11/29/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Binding var product: Product
    @Binding var viewState: ViewState
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                viewState = .list
            } label: {
                Text("<< back")
                    .font(Constants.textFont)
                    .foregroundColor(Color.highlight)
                    .padding([.trailing, .leading, .bottom], 5)
            }
            Image(product.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width - 60, alignment: .center)
                .padding(20)
            Text(product.name)
                .font(Constants.textFont.bold())
                .padding([.trailing, .leading, .bottom], 5)
            Text(product.description)
                .font(Constants.textFont)
                .padding([.trailing, .leading, .bottom], 5)
            Text(String(format: "$%.2f", product.price))
                .font(Constants.textFont)
                .foregroundColor(Color.highlight)
                .padding([.trailing, .leading, .bottom], 5)
            Text("Quantity Available: \(product.quantity)")
                .font(Constants.textFont)
                .padding([.trailing, .leading, .bottom], 5)
            Spacer()
            
            Button {
                // DO SOMETHING
            } label: {
                Text("Add to Cart")
                    .font(Constants.buttonFont)
                    .foregroundColor(Color.black)
                    .frame(width: 300, height: 50)
                    .background(Color.highlight)
                    .cornerRadius(50)
                    .padding(.leading, 50)
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Binding.constant(Product()), viewState: Binding.constant(.list))
    }
}
