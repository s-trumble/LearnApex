public with sharing class MathExam {
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
}