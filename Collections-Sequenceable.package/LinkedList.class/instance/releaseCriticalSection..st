private
releaseCriticalSection: aContext
	"A helper method for Process suspendAndReleaseCriticalSection;
	 aContext receiver represents a condition variable, i.e. a Semaphore
	 or a Mutex (or any other in case of future new condition variables),
	 which will take care of releasing the critical section properly."

	^aContext receiver stepIntoCriticalSection: aContext