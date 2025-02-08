public with sharing class BlackJackCardCounter {
    public Integer countCards(List<Object> cards) {
        Integer count = 0;

        for(Object card : cards){
            if(card == 2 || card == 3 || card == 4 || card == 5 || card == 6 ){
                count++;
            }

            if(card == 10 || card == 'J' || card == 'Q' || card == 'K' || card == 'A'){
                count--;
            }
        }
    return count;
    }
}