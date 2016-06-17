import Foundation

public class PrimeFactorsBrain {
    
    public static func factors(number: Int) -> [Int] {
        var remainder: Int = number
        var prime_factors: [Int] = []
        
        while(remainder > 1) {
            for i in (2...remainder) {
                if(remainder % i == 0) {
                    prime_factors.append(i)
                    remainder = remainder/i
                    break
                }
            }
        }
        return prime_factors
    }

}
