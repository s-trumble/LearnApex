public with sharing class PrimeMatrixGenerator {
    public List<List<Integer>> generatePrimeMatrix(Integer n) {
        List<List<Integer>> matrix = new List<List<Integer>>();
        System.debug('init matrix: ' + matrix);

        //set how many primes to generate
        List<Integer> primes = generatePrimes(n * n);
        System.debug('primes: ' + primes);
        
        Integer primeIndex = 0;
        for (Integer i = 0; i < n; i++) {
            //init a new row
            List<Integer> row = new List<Integer>();
            for (Integer j = 0; j < n; j++) {
                //add n indices from longer list to row
                row.add(primes[primeIndex]);
                primeIndex++;
            }
            matrix.add(row);
        }
        
        return matrix;
    }

    //create a list of n*n primes
    public List<Integer> generatePrimes(Integer n) {
        List<Integer> primes = new List<Integer>();
        Integer num = 2;
        
        while (primes.size() < n) {
            if (isPrime(num)) {
                primes.add(num);
            }
            num++;
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