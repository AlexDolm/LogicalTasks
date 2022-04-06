import UIKit

//В коде сторонней библиотеки обнаружился баг. Вместо отсортированного массива строк библиотека возвращает массив случайно упорядоченных строк

var response = "ыв3а\nвы1а\nsd2f"
var fullNameArr = response.components(separatedBy: "\n")
var mass = [String]()


for i in 1...fullNameArr.count {
    for j in fullNameArr {
        if j.contains(String(i)){
            var perem = [String]()
            for k in j{
                if String(k) != String(i){
                    perem.append(String(k))
                }
            }
            mass.append(perem.joined(separator: ""))

        }
    }

}

print(mass)

