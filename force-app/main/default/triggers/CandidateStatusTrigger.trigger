trigger CandidateStatusTrigger on Candidate__c (before update) {
    for(Candidate__c cand : Trigger.new) {
        Candidate__c oldCand = Trigger.oldMap.get(cand.Id);
        
        if(cand.Status__c == 'Rejected' && oldCand.Status__c != 'Rejected') {
            cand.Rejection_Reason__c = 'Not Selected in this Round';
        }
    }
}