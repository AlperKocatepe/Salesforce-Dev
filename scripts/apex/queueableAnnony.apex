List<Account> accs = [SELECT id, name FROM account];
AccountQueueableExamples aq = new AccountQueueableExamples(accs);
id jobId = System.enqueueJob(aq);
System.debug(jobId);