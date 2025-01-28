public with sharing class StaircasePatternGenerator {
    public List<String> generateStaircasePattern (Integer n) {
        List<String> staircase = new List<String>();
        
        for(Integer i = 1 ; i <=n ; i++){
            String stairs = '';
            //leading spaces. ege when n=4 then want 3 leading spaces
            for(Integer j = 1; j <= n - i ; j++){
                stairs += ' ';
            }
            //stairs as # chars, 1 stair per index
            for(Integer k = 1 ; k <= i ; k++){
                    stairs += '#';
                }
            
            staircase.add(stairs);
        }       
        return staircase;
    }
}