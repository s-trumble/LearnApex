public class PrimeNumberGenerator {
    public List<Integer> generatePrimes(Integer N) {
        List<Integer> primes = new List<Integer>();
        
        for (Integer num = 2; num <= N; num++) {
            if (isPrime(num)) {
                primes.add(num);
            }
        }
        
        return primes;
    }
    
    private Boolean isPrime(Integer num) {
        if (num <= 1) {
            return false;
        }
        
        for (Integer i = 2; i <= Math.sqrt(num); i++) {
            if (Math.mod(num, i) == 0) {
                return false;
            }
        }
        
        return true;
    }
}