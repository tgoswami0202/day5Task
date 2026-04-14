trigger OpportunityCurrencyTrigger on Opportunity (after insert,after update) {
    if(trigger.isAfter){
        if(trigger.isInsert||trigger.isUpdate){
         currencyExchange.updateCurrency(trigger.new,trigger.oldMap,trigger.isInsert,trigger.isUpdate);
    	}
        
    }
}
