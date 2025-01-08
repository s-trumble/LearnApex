public with sharing class LottoSimulation {
    public Integer playLotto(Integer num1, Integer num2, Integer num3) {
        Set<Integer> usernumbers = new Set<Integer>{num1, num2, num3};

        for(Integer i = 1; i < 100; i++){
            
            Integer draw1  = (Integer)Math.floor(Math.random() * 10) + 1;
            Integer draw2  = (Integer)Math.floor(Math.random() * 10) + 1;
            Integer draw3  = (Integer)Math.floor(Math.random() * 10) + 1;
            
            Set<Integer> drawnNumbers = new Set<Integer>();
            drawnNumbers.add(draw1);
            drawnNumbers.add(draw2);
            drawnNumbers.add(draw3);
            
            system.debug('draw'+i+':'+drawnNumbers);
            getmatchednumbers(usernumbers, drawnNumbers);

            System.debug('matchednumbers:'+getmatchednumbers(usernumbers, drawnNumbers));
            if(usernumbers == drawnNumbers){
                System.debug('Matched all numbers in ' + i + ' draws!');
                return i;
            }

        }
        System.debug('Maximum number of draws reached without a complete match.');
        return 100;

    }
    public Set<Integer> getmatchednumbers(Set<Integer> usernumbers, Set<Integer> drawnNumbers){
        Set<Integer> matchedNumbers = new Set<Integer>();
        
        for(Integer i : usernumbers){
            if(drawnNumbers.contains(i)){
                matchedNumbers.add(i);
            }
        }
        return matchedNumbers;
    }
}