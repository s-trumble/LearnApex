public class FermatExplorer {
    public String checkFermat(Integer a, Integer b, Integer c, Integer n){
        String result;
        if(Math.pow(a + b,n) == c){
            result = 'Holy smokes, Fermat was wrong!';
        } else {
          result = 'No, that doesn\'t work.';  
        }
        return result;
    }
}