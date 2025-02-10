public with sharing class SmartLightSwitch {
    public SmartLightSwitch() {

    }
    public String lightSwitch(List<String> buttonInputs){
        String finalState;

        for(String input : buttonInputs){
            if(input == finalState){
                finalState = 'Nothing';
            } else {
                finalState = input;
            }
        }
        return finalState;
    }
}
/*
Define a method named lightSwitch that takes one parameter:
1) List<String> buttonInputs: A list of button inputs where each element is either "On" or "Off".
2) The method should determine the final state of the light based on the button inputs.
3) The final state can be "On", "Off", or "Nothing" (if the light is neither on nor off due to button presses undoing each other).
*/