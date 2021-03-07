//
//  main.swift
//  l2_PilchenkoAleksandr
//
//  Created by Александр Пильченко on 07.03.2021.
//

import Foundation

// Задание 1. Функция которая определяет четное число или нет
var numberArray = [11, 95, 45, 69, 46, 90, 23, 70]
for sorting in numberArray{
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}
// вариант через switch
var arrayNumber = [66, 43, 67, 12, 30, 26]

for sorting in arrayNumber{
    switch sorting % 2 {
    case 0:
        print("\(sorting) четное число")
    default:
        print("\(sorting) не четное число")
    }
    
}

//Задание 2. Написать функцию, которая определит делится ли число без остатка на 3.
for sortingTwo in numberArray{
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) делится на 3 без остатка")
    } else {
        print("\(sortingTwo) делится на 3 с остатком")
    }
}

//Задание 3. Возврастающий массив из 100 чисел.
var array100: Array<Int> = []
for i in 1...100{
    array100.append(i)
}
print(array100)

//Задание 4. Удалить из массива все четные числа и все числа, которые не делятся на 3.
var toDelete = array100.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(toDelete)

//Задание 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibonachiArray(_ n: Int) -> [Double] {
    var fibonachi: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonachi.append(fibonachi[i - 1] + fibonachi[i - 2])
    }
    return fibonachi
}
print(fibonachiArray(100))

//Задание 6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

func primeNumber(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes
}
print(primeNumber(arrayPassed: Array(2...100)))


