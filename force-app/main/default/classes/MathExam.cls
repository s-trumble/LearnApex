public with sharing class MathExam {
    
    //earlier challenge
    public Decimal calculateAverage(List<Integer> examResults) {
        if(examResults == null || examResults.isEmpty()){
            return 0;
        }
        Integer exams = examResults.size();
        Integer examTotals = 0;

        for(Integer examResult : examResults){
            examTotals += examResult;
        }

        Decimal examAverage = (Decimal)examTotals / (Decimal)exams;
        return examAverage;
    }
    
    public List<Decimal> grades;
    public MathExam(){
        grades = new List<Decimal>();
    }
    public Decimal average(){
        if(grades == null || grades.isEmpty()){
            return 0.0;
        }
        Decimal gradesTotals = 0;

        for(Decimal grade : grades){
            gradesTotals += grade;
        }

        Decimal average = gradesTotals / grades.size();
        return average;
    }

    public Decimal highestGrade(){
        if(grades == null || grades.isEmpty()){
            return 0.0;
        }
        Decimal highestGrade = grades[0];

        for(Decimal grade : grades){
            if(grade > highestGrade){
                highestGrade = grade;
            }
        }

        return highestGrade;
    }

    public Decimal lowestGrade(){
        if(grades == null || grades.isEmpty()){
            return 0.0;
        }
        Decimal lowestGrade = grades[0];

        for(Decimal grade : grades){
            if(grade < lowestGrade){
                lowestGrade = grade;
            }
        }

        return lowestGrade;
    }
}