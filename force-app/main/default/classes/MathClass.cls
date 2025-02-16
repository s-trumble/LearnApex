public with sharing class MathClass {
    public Integer findMin(Integer x, Integer y, Integer z) { 
        return Math.min(x, Math.min(y, z)); 
        }

    public List<Double> findSquareRoots(List<Integer> nums){
        if(nums == null || nums.isEmpty()){
            return new List<Decimal>();
        }

        List<Double> squareRoots = new List<Double>();
        Double squareRoot = 0;

        for(Integer num : nums){
            squareRoot = Math.sqrt(num);
            squareRoots.add(squareRoot);
        }

        return squareRoots;
    }
    
}