public class TriangleUtility {
    public Double calculateTriangleArea(Double base, Double height){
        if(base == null || height == null){
            return 0.0;
        }
        if(base <= 0 || height <= 0){
            return 0.0;
        }
        
        Double area = 0.5 * base * height;
        system.debug(area);
        return area;
    }

}