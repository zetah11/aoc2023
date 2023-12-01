tests - copying
testWithoutDuplicates

	| in |
	in := OrderedDictionary withAll: {#a->1 . #b->3 . #c->5 . #d->7 . #e->9 . #f->1 . #g->3 . #h->5 . #i->7 . #j->9 . #k->2 . #l->4 . #m->6 . #n->8 . #o->10 . #p->2 . #q->4 . #r->6 . #s->8 . #t->10}. 

	self assert: in equals: in withoutDuplicates.
	self assert: in identical: in withoutDuplicates.

	self assert: in equals: in copyWithoutDuplicates.
	self deny: in identical: in copyWithoutDuplicates.