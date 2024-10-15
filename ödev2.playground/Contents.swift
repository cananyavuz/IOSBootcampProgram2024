import UIKit

//Ödev 2 - Metod oluşturma

/* Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri
döndüren bir metod yazınız. Mile = Km x 0.621 */

func calculateMiles (km: Double) -> Double {
    let miles = km * 0.621371
    return Double(miles)
}
calculateMiles(km: 54)

/* Kenarları parametre olarak girilen ve dikdörtgenin alanını
 hesaplayan bir metod yazınız. */

func calculateArea (width : Double, length : Double) -> Double {
    let area = width * length
    return Double(area)
}
calculateArea(width:25,length:30)

/* Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri
 döndüren metodu yazınız. */

func calculateFactorial (number: Int) -> Int {
    if number < 0 {
        print("Hata: Negatif bir sayının faktöriyeli tanımlı değildir.")
        return -1
    }
    var fact : Int = 1
    var num = number
    while(num > 1){
        fact *= num
        num -= 1
    }
    return fact
}
calculateFactorial(number: -4)

/* Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu
gösteren bir metod yazınız. */

func countE (word: String) -> Int {
    var eCount : Int = 0
    for char in word {
        if char == "e" || char == "E" {
            eCount += 1
        }
    }
    return eCount
}

countE(word : "Parametre")

/* Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod
 yazınız.
 • Her bir iç açı = ( (Kenar sayısı - 2) x 180 ) / Kenar sayısı */

func calculateInteriorAngle(sides: Int) -> Double? {

    if sides < 3 {
        print("Hata: Çokgen en az 3 kenara sahip olmalıdır.")
        return nil
    }
    
    let angle = Double((sides - 2) * 180) / Double(sides)
    
    return angle
}

calculateInteriorAngle(sides: 6)

/* Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod
 yazınız.
 • 1 günde 8 saat çalışılabilir.
 • Çalışma saat ücreti : 40 ₺
 • Mesai saat ücreti : 80 ₺
 • 150 saat üzeri mesai sayılır. */

func calculateSalary(days: Int) -> Int {

    if (0 < days && days < 9) {
        return days * 8 * 40
    }else if (8 < days) {
        let overtimeDays =  days - 9
        return ((150 * 40) + 160) + (overtimeDays * 8 * 80)
    }
    
    return 0
}

/* Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu
 yazınız.
 • 1 saat = 50 ₺
 • 1 saat aşımından sonra her 1 saat , 10 ₺’dir. */

func calculateParkingFee(hours: Int) -> Int {

    if (hours == 1) {
        return 50
    }else if (1 < hours) {
        let overtimeHours =  hours - 1
        return (50 + (overtimeHours * 10))
    }
    return 0
}
calculateParkingFee(hours: 3)
