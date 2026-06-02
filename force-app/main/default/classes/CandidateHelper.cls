public class CandidateHelper {
    
    public static void getCandidateCountByJob() {
        List<AggregateResult> results = [
            SELECT Applied_Job__c, COUNT(Id) total
            FROM Candidate__c
            GROUP BY Applied_Job__c
        ];
        
        for(AggregateResult ar : results) {
            System.debug('Job: ' + ar.get('Applied_Job__c') + 
                        ' | Total Candidates: ' + ar.get('total'));
        }
    }
}