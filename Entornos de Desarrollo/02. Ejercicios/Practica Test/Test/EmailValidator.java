import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator {

    public static boolean Email(String email) {                                                                      
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduce email: ");
        email = sc.nextLine();
        Pattern pat = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");   
        Matcher mat = pat.matcher(email);
        sc.close();
        if(mat.find()){
            return true;
        }
        return false;
    }
}

