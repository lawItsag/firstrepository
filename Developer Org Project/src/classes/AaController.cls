public with sharing class AaController
{
	List<OpportunityLineItem> lst=new List<OpportunityLineItem>();
	public List<OpportunityLineItem> getDetails()
	{
		lst=[Select Quantity,PricebookEntryId,OpportunityId From OpportunityLineItem where OpportunityId=:ApexPages.currentPage().getParameters().get('cid')];
		return lst;
	}
}