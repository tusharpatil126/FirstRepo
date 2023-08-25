//Email Duplication


public class EmailDuplicationOnContactHandler {

    public void duplicateEmail(list<contact> conlist){
        list<string> strlist = new list<String>();
        list<contact> c = [select id,lastname,email from contact];
        for(contact ca:c){
            strlist.add(ca.Email);
        }
        for(Contact con:conlist){
           
                if(strlist.contains(con.Email)){
                    con.Email.adderror('Duplicate Email is Found...');
                
            }
            
        }
    }
}