public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer candidateCount = 0;

    public void printCandidate(){
        System.debug('Candidate name is ' + name + '(' + gender + ')');
        System.debug('Company name is ' + companyName);
        System.debug('---The End---');
        candidateCount++;
        System.debug(candidateCount);
    }

    public static void printCandidateInfo() {
        System.debug('Company name is ' + companyName);
    }
}


