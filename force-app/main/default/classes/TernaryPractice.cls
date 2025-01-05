public with sharing class TernaryPractice {
    public Integer Task4() {
        String quote= 'The journey of a thousand miles begins with one step.';
        //check for any whitespace and return number of whitespaces
        Integer numOfSpace = quote.containsWhitespace() ? quote.countMatches(' ') : 0;
        return numOfSpace;
    }

    public Integer Task6(){
        Integer a = 2, b = 3, c;
        b++; //4
        a += b; //a=6
        b *= a; //bx6, b=24
        b /= 3; // b8
        c = a>b ? (a+b) : (a*b);
        // Write your code here
        Integer result = 48;
        return result;
    }
    public String Task7(){
        String name = 'leaRN';
        name += 'aPex';
        name = ((name <> null) && (name.length() > 0) && name.endsWith('x')) ? name.toUpperCase().repeat('*',3) : '';

        System.debug(name);

        // Write your code here
        String result = 'LEARNAPEX*LEARNAPEX*LEARNAPEX';
        return result;
    }
}