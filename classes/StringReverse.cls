public class StringReverse {
    public static void reverseString(){
        //By using reverse method()
        String mainStr = 'DEEPAK';
        String revString = mainStr.reverse();
        System.debug('Reversed string is - '+revString);
        
        //By using custom way
        String origStr = 'KUMAR';
        String strRev = '';
        for(Integer i=origStr.length()-1; i>=0; i--){
            strRev += origStr.substring(i, i+1);
        }
        System.debug('Custom reversed string is - '+strRev);
        
        //Regular Expression for email validation using apex in Salesforce
        String strMail = 'testmail@gmail.com'; 
        if(!Pattern.matches('[a-zA-Z0-9._-]+@[a-zA-Z]+.[a-zA-Z]{2,4}', strMail))
        {                        
            System.debug('Please check your email address!!!!!');
        }
        //find the distinct values of a particular field in a SObject using SOQL Query
        List<AggregateResult> results = [SELECT count(Id), Name FROM Account Group By Name];
        List<String> uniqueNames = new List<String>();
        for (AggregateResult result : results) {
            uniqueNames.add((String)result.get('Name'));
        }
        System.debug('uniqueNames is - '+uniqueNames);
        
        //By using set
        Set<String> uniqueNamesBySet = new Set<String>();
        for (Account acc : [SELECT Name FROM Account]) {
            uniqueNamesBySet.add(acc.Name);
        }
        System.debug('uniqueNamesBySet - '+uniqueNamesBySet);
    }
}