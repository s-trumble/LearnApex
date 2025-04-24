trigger AccountTrigger2 on Account (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.beforeInsert(Trigger.new, Trigger.newMap);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountTriggerHandler.beforeUpdate(Trigger.new, Trigger.newMap, Trigger.old, Trigger.oldMap);
    }
}