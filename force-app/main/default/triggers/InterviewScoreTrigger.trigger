trigger InterviewScoreTrigger on Interview__c (after insert, after update) {
    List<Id> candidateIds = new List<Id>();
    
    for(Interview__c interview : Trigger.new) {
        if(interview.Interview_Status__c == 'Completed' 
           && interview.Score__c >= 80
           && interview.Candidate__c != null) {
            candidateIds.add(interview.Candidate__c);
        }
    }
    
    if(!candidateIds.isEmpty()) {
        List<Candidate__c> candidates = [
            SELECT Id, Status__c 
            FROM Candidate__c 
            WHERE Id IN :candidateIds
        ];
        
        for(Candidate__c c : candidates) {
            c.Status__c = 'Selected';
        }
        
        update candidates;
    }
}
