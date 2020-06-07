import UIKit

//Задание 1. Написать функцию, которая определяет, четное число или нет.
func evenOrNot (number: Int) {
    (number % 2) == 0 ? print("Число \(number) четное"): print("Число \(number) нечетное")
}
var number = 2
evenOrNot(number: number)
number = 9
evenOrNot(number: number)

//Задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divideToThree (number: Int) {
    (number % 3) == 0 ? print("Число \(number) делится на 3 без остатка"): print("Остаток от деления числа \(number) на 3 равен \(number % 3)")
}
divideToThree(number: number)
number = 425425
divideToThree(number: number)

//Задание 3. Создать возрастающий массив из 100 чисел.
var arrayOfHundred: [Int] = []
for i in 1...100 {
    arrayOfHundred.append(i)
}
print(arrayOfHundred)

//Задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for (_, value) in arrayOfHundred.enumerated() {
    if (value % 2) == 0 || (value % 3) != 0 {
        arrayOfHundred.remove(at: arrayOfHundred.firstIndex(of: value)!)
    }
}
print(arrayOfHundred)
