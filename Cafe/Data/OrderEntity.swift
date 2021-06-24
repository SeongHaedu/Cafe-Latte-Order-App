import CoreData

enum Flavor:Int16 {
    case cafe_latte
    case cafe_mocha
    case caramel_latte
    case matcha_latte
    
    var name:String {
        flavorArray[Int(self.rawValue)]
    }
}
enum Topping:Int16 {
    case None
    case Chocolate
    case Caramel
    case Matcha
    var name:String {
        toppingArray[Int(self.rawValue)]
    }
}

var flavorArray = ["Cafe Latte",
                   "Cafe Mocha",
                   "Caramel Latte",
                   "Matcha Latte"]

var toppingArray = ["None",
                     "Chocolate",
                     "Caramel",
                     "Matcha"]

extension OrderEntity {
    static func create(in managedObjectContext: NSManagedObjectContext,
                       flavor: Int = 0,
                       sugar: Bool = false,
                       topping: Int = 0,
                       quantity: Int = 1,
                       other: String = "",
                       date: Date = Date(),
                       favorite: Bool = false
    ){
        let newOrder = self.init(context: managedObjectContext)
        newOrder.flavor = Int16(flavor)
        newOrder.sugar = sugar
        newOrder.topping = Int16(topping)
        newOrder.quantity = Int16(quantity)
        newOrder.other = other
        newOrder.id = UUID().uuidString
        newOrder.date = date
        newOrder.favorite = favorite
        do {
            try  managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    /// 味の種類の文字列を取得する
    public var flavorName: String {
        Flavor(rawValue: self.flavor)!.name
    }
    
    /// トッピングの文字列を取得する
    public var toppingName: String {
        Topping(rawValue: self.topping)!.name
    }
    
    override
    public func didChangeValue(forKey key: String){
        super.didChangeValue(forKey: key)
        objectWillChange.send()
    }
}



