public with sharing class TreasureMap {
    public TreasureMap() {

    }

    public List<Integer> decodeMap(String code){
        Integer x = 0;
        Integer y = 0;

        List<String> listCode = code.split(''); 
        for(String coordinate : listCode){
            if(coordinate.toUpperCase() == 'N'){
                y++;
            }
            if(coordinate.toUpperCase() == 'S'){
                y--;
            }
            if(coordinate.toUpperCase() == 'E'){
                x++;
            }
            if(coordinate.toUpperCase() == 'W'){
                x--;
            }
        }
        return new List<Integer>{x,y};
    }
}