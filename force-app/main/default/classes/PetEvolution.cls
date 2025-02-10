public with sharing class PetEvolution {
    public Integer hunger;
    public Integer happiness;
    public Integer energy;
    public PetEvolution() {
        hunger = 0;
        happiness =  0;
        energy = 0;
    }

    public String evolvePet(List<String> actions){
        for(String action : actions){
            switch on action {
                when 'feed' {
                    hunger += 2;
                }
                when 'play'{
                    happiness += 2;
                }
                when 'sleep' {
                    energy += 2;
                }
                when else {
                    //do nothing
                }
            }
        }
        if(hunger >=2 && happiness >= 2 && energy >= 2){
            return 'Stage 3';
        } else if(hunger >=1 && happiness >= 1 && energy >= 1){
            return 'Stage 2';
        } else {
            return 'Stage 1';
        }
    }

}