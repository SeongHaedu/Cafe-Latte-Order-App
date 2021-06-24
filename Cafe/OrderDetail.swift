//
//  OrderDetail.swift
//  Cafe
//
//  Created by Kaito Narimoto on 2021/01/05.
//

import SwiftUI

struct OrderDetail: View {
    @ObservedObject var order: OrderEntity
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Favorite")
                if order.favorite {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                        .onTapGesture {
                            self.order.favorite = false
                        }
                } else {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .onTapGesture {
                            self.order.favorite = true
                        }
                }
            }.padding()
            
            CafeLatteView(topping: Int(order.topping), flavor: Int(order.flavor), foam: Int(order.flavor), sugar: order.sugar)
            
            Text(order.flavorName)
                .font(.title)
            if order.sugar {
                Text("Sugar")
            }
            if order.topping != 0 {
                Text(order.toppingName)
            }
            Text(order.other!)

            Text("\(order.date!, formatter: dateFormatter)")
                .font(.caption)
        }.navigationTitle("Order detail")
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
        let newOrder = OrderEntity(context: context)
        newOrder.flavor = Int16(1)
        newOrder.sugar = true
        newOrder.topping = Int16(2)
        newOrder.quantity = Int16(10)
        newOrder.other = ""
        newOrder.id = UUID().uuidString
        newOrder.date = Date()
        return OrderDetail(order: newOrder)
    }
}
