public with sharing class kk
{
/* Added this text for second commit */
   
   public void llll()
   {
       List<sObject> lstID=new List<sObject>();
        
        List<sObject>lstID2=new List<sObject>();
        
        for(PricebookEntry pp:[select PriceBook2Id from PricebookEntry])
        {
            lstID.add(pp);
        }
        
        for(PricebookEntry pp:[select Product2Id from PricebookEntry])
        {
            lstID2.add(pp);
        }
        
        List<Product2> prod=[select Name from Product2 where Id In:lstID2];
        
        
    }
    
    
}