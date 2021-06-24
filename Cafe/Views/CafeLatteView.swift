import SwiftUI


struct LatteArtHeartShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.move(to:CGPoint(x: scale/2, y: scale*0.45))
            path.addQuadCurve(to:CGPoint(x: scale*9/20, y: scale*0.395),
                          control: CGPoint(x: scale*9/20, y: scale*0.41))
            path.addQuadCurve(to:CGPoint(x: scale/2, y: scale*0.385),
                          control: CGPoint(x: scale*9/20, y: scale*0.36))
            path.addQuadCurve(to:CGPoint(x: scale*11/20, y: scale*0.395),
                          control: CGPoint(x: scale*11/20, y: scale*0.36))
            path.addQuadCurve(to:CGPoint(x: scale/2, y: scale*0.45),
                          control: CGPoint(x: scale*11/20, y: scale*0.41))
            path.closeSubpath()
        }
    }
}

struct LatteArtLineShape1: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.addArc(center: CGPoint(x:scale/2,
                                        y:scale * 0.35),
                        radius: scale * 0.1,
                        startAngle: .degrees(-35) ,
                        endAngle: .degrees(215),
                        clockwise: false,
                        transform: CGAffineTransform(a: 1, b: 0,
                                                     c: 0, d: 0.5,
                                                     tx: 0, ty: scale/4))
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.01))
    }
}

struct LatteArtLineShape2: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.addArc(center: CGPoint(x:scale/2,
                                        y:scale * 0.35),
                        radius: scale * 0.15,
                        startAngle: .degrees(-20) ,
                        endAngle: .degrees(200),
                        clockwise: false,
                        transform: CGAffineTransform(a: 1, b: 0,
                                                     c: 0, d: 0.5,
                                                     tx: 0, ty: scale/4))
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.01))
    }
}

struct LatteArtLineShape3: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.addArc(center: CGPoint(x:scale/2,
                                        y:scale * 0.35),
                        radius: scale * 0.2,
                        startAngle: .degrees(-10) ,
                        endAngle: .degrees(190),
                        clockwise: false,
                        transform: CGAffineTransform(a: 1, b: 0,
                                                     c: 0, d: 0.5,
                                                     tx: 0, ty: scale/4))
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.01))
    }
}


struct LatteArtShape_Previews : PreviewProvider {
    static var previews: some View {
        LatteArtHeartShape()
        LatteArtLineShape1()
        LatteArtLineShape2()
        LatteArtLineShape3()
    }
}


struct ToppingShape: Shape {
    func path(in rect: CGRect) -> Path {
        let scale = min(rect.width, rect.height)
        let pt1 = CGPoint(x: scale*7/20,y: scale * 0.49)
        
        let pt2 = CGPoint(x: scale*9/20,
                          y: scale * 0.45)
        let c21 = CGPoint(x: scale*10/20,
                          y: scale * 0.37)
        let c22 = CGPoint(x: scale*10/20,
                          y: scale * 0.37)
        
        let pt3 = CGPoint(x: scale*10/20,y: scale * 0.45)
        let c31 = CGPoint(x: scale*8/20,
                          y: scale * 0.53)
        let c32 = CGPoint(x: scale*8/20,
                          y: scale * 0.53)
        
        let pt4 = CGPoint(x: scale*11/20,y: scale * 0.45)
        let c41 = CGPoint(x: scale*12/20,
                          y: scale * 0.37)
        let c42 = CGPoint(x: scale*12/20,
                          y: scale * 0.37)
        
        let pt5 = CGPoint(x: scale*13/20,y: scale * 0.41)
        let c51 = CGPoint(x: scale*10/20,
                          y: scale * 0.53)
        let c52 = CGPoint(x: scale*10/20,
                          y: scale * 0.53)

        return Path { path in
            path.move(to: pt1)
            path.addCurve(to: pt2,
                          control1: c21,
                          control2: c22)
            path.addCurve(to: pt3,
                          control1: c31,
                          control2: c32)
            path.addCurve(to: pt4,
                          control1: c41,
                          control2: c42)
            path.addCurve(to: pt5,
                          control1: c51,
                          control2: c52)
            
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.01))
    }
}
struct ToppingShape2: Shape {
    func path(in rect: CGRect) -> Path {
        let scale = min(rect.width, rect.height)
        let pt1 = CGPoint(x: scale*7/20,y: scale * 0.40)
        
        let pt2 = CGPoint(x: scale*10/20,y: scale * 0.42)
        let c21 = CGPoint(x: scale*15/20,
                          y: scale * 0.415)
        let c22 = CGPoint(x: scale*15/20,
                          y: scale * 0.415)
        
        let pt3 = CGPoint(x: scale*10/20,y: scale * 0.44)
        let c31 = CGPoint(x: scale*5/20,
                          y: scale * 0.435)
        let c32 = CGPoint(x: scale*5/20,
                          y: scale * 0.435)
        
        let pt4 = CGPoint(x: scale*10/20,y: scale * 0.46)
        let c41 = CGPoint(x: scale*15/20,
                          y: scale * 0.44)
        let c42 = CGPoint(x: scale*15/20,
                          y: scale * 0.44)
        
        let pt5 = CGPoint(x: scale*14/20,y: scale * 0.48)
        let c51 = CGPoint(x: scale*5/20,
                          y: scale * 0.475)
        let c52 = CGPoint(x: scale*5/20,
                          y: scale * 0.475)

        return Path { path in
            path.move(to: pt1)
            path.addCurve(to: pt2,
                          control1: c21,
                          control2: c22)
            path.addCurve(to: pt3,
                          control1: c31,
                          control2: c32)
            path.addCurve(to: pt4,
                          control1: c41,
                          control2: c42)
            path.addCurve(to: pt5,
                          control1: c51,
                          control2: c52)
            
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.01))
    }
}
struct ToppingShape_Previews : PreviewProvider {
    static var previews: some View {
        ToppingShape()
        ToppingShape2()
        
    }
}

struct MilkFoamShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.35, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.36, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.37, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.38, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.39, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.4, width: scale/2, height: scale * 0.2))
            
            
        }
    }
}

struct MilkFoam_Previews : PreviewProvider {
    static var previews: some View {
        MilkFoamShape()
            
    }
}

struct SteamedMilkShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.41, width: scale/2, height: scale * 0.2))
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.42, width: scale/2, height: scale * 0.2))
            path.addArc(center: CGPoint(x:scale/2,
                                        y:scale * 0.52),
                        radius: scale * 0.25,
                        startAngle: .degrees(0) ,
                        endAngle: .degrees(180),
                        clockwise: false)
        }
    }
}
struct SteamedMilkShape_Previews : PreviewProvider {
    static var previews: some View {
        SteamedMilkShape()
    }
}


struct GlassShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            
            path.addEllipse(in: CGRect(x: scale/4, y: scale * 0.35, width: scale/2, height: scale * 0.2))
            path.move(to: CGPoint(x:scale*3/4, y:scale * 0.57))
            path.addLine(to: .init(x:scale*3/4, y:scale * 0.46))
            
            path.addArc(center: CGPoint(x:scale/2,
                                        y:scale * 0.57),
                        radius: scale * 0.25,
                        startAngle: .degrees(0) ,
                        endAngle: .degrees(180),
                        clockwise: false)
            path.addLine(to: .init(x:scale/4, y:scale * 0.57))
            path.addLine(to: .init(x:scale/4, y:scale * 0.46))
            
            
            
        }.strokedPath(.init(lineWidth: min(rect.size.width,
                                           rect.size.height) * 0.015))
        
            
    }
}
struct GlassShape_Previews : PreviewProvider {
    static var previews: some View {
        GlassShape()
    }
}


struct Sugar: Identifiable {
    static let size: CGFloat = 0.10
    var id = UUID()
    let pt: CGPoint
}


struct SugarShape: Shape {
    let sugar: Sugar
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addRoundedRect(
                in:CGRect(x: scale * sugar.pt.x,
                          y: scale * sugar.pt.y,
                          width: scale * Sugar.size,
                          height: scale * Sugar.size),
                cornerSize: CGSize(width: 3, height: 3))
        }
    }
}



struct SugarShape_Previews : PreviewProvider {
    static var previews: some View {
        SugarShape(sugar: .init(pt: .init(x: 0.5, y: 0.5)))
    }
}



fileprivate let sugarArray = [
    Sugar(pt: CGPoint(x: 0.8, y: 0.7)),
    Sugar(pt: CGPoint(x: 0.75, y: 0.77)),
    Sugar(pt: CGPoint(x: 0.84, y: 0.80))
]

struct CafeLatteView: View {
    var topping: Int
    var flavor: Int
    var foam: Int
    var sugar: Bool
    
    static func makeMilkFoamGradient(_ foam: Flavor) -> [Color] {
        var milkFoam: Color = Color.green
        switch foam {
            case .cafe_latte:
                milkFoam = Color("cafe_latte_milk_foam")
            case .cafe_mocha:
                milkFoam = Color("mocha_milk_foam")
            case .caramel_latte:
                milkFoam = Color("caramel_milk_foam")
            case .matcha_latte:
                milkFoam = Color("matcha_milk_foam")
            
        }
        return [milkFoam]
    }
    
    static func makeSteamedMilkGradient(_ flavor: Flavor) -> [Color] {
        var start: Color = Color.green
        var end: Color = Color.yellow
        switch flavor {
            case .cafe_latte:
                start = Color("cafe_latte_start")
                end = Color("cafe_latte_end")
            case .cafe_mocha:
                start = Color("mocha_milk_start")
                end = Color("mocha_milk_end")
            case .caramel_latte:
                start = Color("caramel_milk_start")
                end = Color("caramel_milk_end")
            case .matcha_latte:
                start = Color("matcha_milk_start")
                end = Color("matcha_milk_end")
            
        }
        return [start, end]
    }
    
    static func makeToppingGradient(_ topping: Topping) -> [Color] {
        var start: Color = Color.white
        var end: Color = Color.gray
        switch topping {
            case .None:
                break;
            case .Chocolate:
                start = Color("chocolate_start")
                end = Color("chocolate_end")
            case .Caramel:
                start = Color("caramel_start")
                end = Color("caramel_end")
            case .Matcha:
                start = Color("matcha_start")
                end = Color("matcha_end")
        }
        return [start,end]
    }
    
    var body: some View {
        let F1: Flavor = Flavor(rawValue: Int16(foam))!
        let FoamColor = CafeLatteView.makeMilkFoamGradient(F1)
        let milkFoamGradient = LinearGradient(
            gradient: .init(colors: FoamColor),
            startPoint: .top,
            endPoint: .bottom
        )
        
        let fl: Flavor = Flavor(rawValue: Int16(flavor))!
        let fColors = CafeLatteView.makeSteamedMilkGradient(fl)
        let steamedMilkGradient = LinearGradient(
            gradient: .init(colors: fColors),
            startPoint: .top,
            endPoint: .bottom
        )
        
        let tp: Topping = Topping(rawValue: Int16(topping))!
        let tColors = CafeLatteView.makeToppingGradient(tp)
        let iceGradient = LinearGradient(
            gradient: .init(colors: tColors),
            startPoint: .leading,
            endPoint: .trailing
        )

        return ZStack{

            /// スチームドミルク
            SteamedMilkShape().fill(steamedMilkGradient)

            /// ミルクフォーム
            MilkFoamShape().fill(milkFoamGradient)
            
            /// 砂糖
            if self.sugar {
                ForEach(sugarArray) {sugar in
                    SugarShape(sugar: sugar)
                        .fill(Color("glass"))
                }
            }
            // トッピング
            if self.topping != 0 {
                ToppingShape().fill(iceGradient)
                ToppingShape2().fill(iceGradient)
                
            } else {
                LatteArtHeartShape().foregroundColor(Color("latte_art"))
                LatteArtLineShape1().foregroundColor(Color("latte_art"))
                LatteArtLineShape2().foregroundColor(Color("latte_art"))
                LatteArtLineShape3().foregroundColor(Color("latte_art"))
            }
            /// グラス
            GlassShape().foregroundColor(Color("glass"))
        }
        
    }
}

struct CafeLatteView_Previews: PreviewProvider {
    static var previews: some View {
        CafeLatteView(topping: Int(Topping.None.rawValue),
                      flavor: Int(Flavor.cafe_latte.rawValue), foam: Int(Flavor.cafe_latte.rawValue),
                       sugar: true
        )
    }
}
