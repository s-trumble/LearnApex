public with sharing class CheckerboardPatternGenerator {
    public List<List<Integer>> generateCheckerboardPattern (Integer n) {
        List<List<Integer>> pattern = new List<List<Integer>>();

            for (Integer i = 0; i < n; i++) {
                List<Integer> row = new List<Integer>();
                for (Integer j = 0; j < n; j++) {
                    if (Math.mod(i + j, 2) == 0) {
                        row.add(1);
                    } else {
                        row.add(0);
                    }
                }
                pattern.add(row);
            }
            return pattern;
    }
}

        /* complex version
        for(Integer i = 0 ; i < n ; i++){
            List<Integer> row = new List<Integer>();
            //set starting digit
            Integer startingDigit = 1;
            Integer nextDigit = 0;
            if(i == 0 || Math.mod(i, 2) == 0){
                startingDigit = 1;
            } else {
                startingDigit = 0;
            }

            for(Integer j = 0 ; j < n ; j++){
                Integer checker = 1;
                
                if(j == 0){
                    checker = startingDigit;
                } else {
                    checker = nextDigit;
                }
                row.add(checker);
                if(checker == 0){
                    nextDigit = 1;
                } else {
                    nextDigit = 0;
                }
                System.debug('Next digit to add: ' + nextDigit);
            }
            pattern.add(row);
            System.debug('row: ' + row);
            System.debug('pattern: ' + pattern);
        }
        return pattern;
    }       
}*/