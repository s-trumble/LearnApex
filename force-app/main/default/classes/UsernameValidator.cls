public class UsernameValidator {
    // write your code here
    public Boolean validateUsername(String username){
        if(username == null){
            return false;
        }
        if(!username.endsWith('_job')){
            return false;
        }
        String usernameSub = username.left(username.length() -4);
        
        if(usernameSub.length() < 8){
            return false;
        }
        if(!usernameSub.isAllLowerCase()){
            return false;
        }
        if(!usernameSub.isAlphaNumeric()){
            return false;
        }
		return true;
    }
}