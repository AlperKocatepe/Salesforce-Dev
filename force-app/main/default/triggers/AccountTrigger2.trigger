trigger AccountTrigger2 on Account (before update) {
   System.debug('Before update trigger.');
}