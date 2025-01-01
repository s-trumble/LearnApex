public class RoomMetrics {
    public Decimal calculateArea(Decimal width, Decimal height){
        Decimal area = width * height;
        return area;
    }
    public Decimal calculatePerimeter(Decimal width, Decimal height){
        Decimal perimeter = width * 2 + height * 2;
        return perimeter;
    }
    
    public String compareAreas(Decimal area1, Decimal area2){
        if(area1 > area2){
            return 'Area 1 is larger';
        } else if (area1 < area2){
            return 'Area 2 is larger';
        } else{
            return 'Areas are equal';
        }
    }
}