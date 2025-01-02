public with sharing class ModuloClass {
    public Boolean isEven(Integer myNumber) {
        if(Math.mod(myNumber, 2) == 0){
            return true;
        } else {
            return false;
        }
    }
}