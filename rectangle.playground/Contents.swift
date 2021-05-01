import UIKit

class Rectangle {
    var width, height : Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double{
        return width * height
    }
    
    func perimeter() -> Double{
        return 2 * (width + height)
    }
    
    func diagonal() -> Double{
        return pow(width * width, height * height)
        
    }
}

var rectangle = Rectangle(width: 4, height: 6)
print("A area do retangulo e: \(rectangle.area())")
print("O perimetro do retangulo e: \(rectangle.perimeter())")
print("A diagonal do retangulo e: \(rectangle.diagonal())")

