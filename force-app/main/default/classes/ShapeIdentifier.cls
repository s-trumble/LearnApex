public class ShapeIdentifier {
    public string identifyShape(Integer width, Integer height){
        String shapeType;
        if(width == height){
            shapeType = 'Square';
        } else {
            shapeType = 'Rectangle';
        }
           
        return 'The shape with width ' + width + ' and height ' + height + ' is a ' + shapeType + '.';
    }
}