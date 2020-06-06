import Foundation

//Задание 1. Квадратное уравнение
var a: Double = 3
var b: Double = -14
var c: Double = -5
var x1: Double
var x2: Double
var discriminant = b * b - 4.0 * a * c
print("Задание 1")
if a != 0 {
    if discriminant < 0 {
        print("Корней нет")
    } else if discriminant == 0 {
        x1 = -b / (2 * a)
        print("Неизвестное равно \(x1)")
    } else {
        x1 = (-b + sqrt(discriminant)) / (2 * a)
        x2 = (-b - sqrt(discriminant)) / (2 * a)
        print("Уравнение имеет два корня: неизвестное x1 равно \(round(100 * x1) / 100), неизвестное x2 равно \(round(100 * x2) / 100)")
    }
} else {
    print("Коэффициент A не может быть равен нулю")
}

//Задание 2. Площадь, периметр и гипотенуза
var sideA: Double = 3
var sideB: Double = 4

var sideC: Double = sqrt(sideA * sideA + sideB * sideB)
var perimeter: Double = sideA + sideB + sideC
var square: Double = (sideA * sideB) / 2
print("Задание 2")
print("Гипотенуза равна \(sideC)")
print("Периметр равен \(perimeter)")
print("Площадь равна \(square)")

//Задание 3. Расчет вклада
var depositTerm: Int = 5
var depositBasis: Int = 1000
var depositRate: Double = 8.9
var depositProfit: Double = Double(depositBasis)

for _ in 1...depositTerm {
    depositProfit += (depositProfit * depositRate / 100)
}
print("Задание 3")
print("При вкладе в размере \(depositBasis) руб. через \(depositTerm) лет вы получите \(round(depositProfit * 100) / 100) руб.")
