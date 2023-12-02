tests
testWithoutDuplicateValues

	| in |
	in := Dictionary withAll: {#a->1 . #b->3 . #c->5 . #d->7 . #e->9 . #f->1 . #g->3 . #h->5 . #i->7 . #j->9 . #k->2 . #l->4 . #m->6 . #n->8 . #o->10 . #p->2 . #q->4 . #r->6 . #s->8 . #t->10}. 
	self "ignore which keys where dropped"
		assert: #(1 2 3 4 5 6 7 8 9 10) 
		equals: in withoutDuplicateValues values sorted.