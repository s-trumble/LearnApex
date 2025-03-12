public with sharing class StudentScores {
    private Map<String,Integer> scores;
    
    public StudentScores() {
        scores = new Map<String,Integer>();
    }

    public void addStudentScore(String name, Integer score){
        if(scores.containsKey(name)){
            scores.put(name, scores.get(name) + score);
        } else{
            scores.put(name, score);
        }
    }

    public List<String> studentsPassing(){
        List<String> passingStudents = new List<String>();

        Set<String> names = scores.keySet();

        for(String name : names){
            if(scores.get(name) >= 70){
                passingStudents.add(name);
            }
        }
        return passingStudents;
    }
}