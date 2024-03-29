import SwiftUI

struct ShopView: View {
    var shop: Shop
    @State var isZoomMode = false
    
    var body: some View {
        
        VStack {
            MapView(location: shop.locationCoordinate)
                .onTapGesture {
                    withAnimation {
                        self.isZoomMode.toggle()
                    }
                }.edgesIgnoringSafeArea(
                    self.isZoomMode ? .all : .init())

            if !isZoomMode {
                ShopImage(image: shop.image)
                    .padding(.top, -130)
                    
             
                Text(shop.name)
                    .padding()
                    .font(.largeTitle)
                Text(shop.address)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Phone: " + shop.phoneNumber)
                    .padding()
            }
        }
        .navigationBarTitle(shop.name)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ShopView(shop: dataStore.shops[2])
        }
    }
}
