public with sharing class MusicScale {
    public String identifyScaleType(List<Integer> scale) {
        /*
        If the sequence of notes follows a whole-whole-half-whole-whole-whole-half step pattern, 
        it's a "Major Scale".

        If the sequence of notes follows a whole-half-whole-whole-half-whole-whole step pattern, 
        it's a "Minor Scale".
        */
        if (notes.size() != 8) {
            return 'Insufficient notes for a scale';
        }
        
        List<Integer> pattern = new List<Integer>();
        List<Integer> majorScale = new List<Integer>{2,2,1,2,2,2,1};
        List<Integer> minorScale = new List<Integer>{2,1,2,2,1,2,2};

        for(Integer i = 0; i < scale.size() - 1 ; i++){
            pattern.add(scale[i + 1] - scale[i]);
        }

        if(pattern == majorScale){
            return 'Major Scale';
        } else if(pattern == minorScale){
            return 'Minor Scale';
        } else {
        return 'Unknown Scale';
        }
    }
}