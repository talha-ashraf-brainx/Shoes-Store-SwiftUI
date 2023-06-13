//
//  PriceContainer.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct PriceContainer: View {
    let upperHalfColor = Color("UpperHalf")
    let lowerHalfColor = Color("LowerHalf")
    
    var imageName: String
    var imageUrl: String
    
    var body: some View {
        VStack (spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: imageUrl)) { image in
                                image
                                    .resizable()
                            } placeholder: {
                                ProgressView()
                            }
                    .background(upperHalfColor)
                    .frame(height: 200)
                
                VStack(alignment: .leading) {
                    Text(imageName)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    
                    Text("Price: 18$")
                        .font(.system(size: 12))
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 8, trailing: 0))
                }
            }
            
            Button(action: {
                print("Add to cart button clicked!")
            }) {
                Text("Add to cart")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(lowerHalfColor)
                    .cornerRadius(15, corners: [.bottomLeft, .bottomRight])
            }
        }
        .cornerRadius(15, corners: [.topLeft, .topRight])
    }
}
