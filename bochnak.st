<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on February 19, 2018 at 7:54:17 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>comment</property> <value>'CS 474 - Project #01 - NewDictionary, TreeDictionary, SortedDictionary'</value>
</component-property>

<class>
<name>GUI</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>dictionary keyToAdd valueToAdd logTextEditor keyToSearch blockToApply infoField infoLabel </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>GUI</class-id>
<body>User Interaface for user convinience.</body>
</comment>

<class>
<name>MyNode</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>data left right </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>MyNode</class-id>
<body>MyNode stores data (Association pair: key &lt;-&gt; value), pointer to the left node, and pointer to the right node in the binary search tree.Instance Variables:	data	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of data	left	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of left	right	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of right</body>
</comment>

<class>
<name>NewDictionary</name>
<environment>Smalltalk</environment>
<super>Core.Collection</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>NewDictionary</class-id>
<body>NewDictionary is a abstract class for dictionary.Subclasses must implement the following messages:	accessing		at:		at:put:	newDictionary-operations		allPairs		keys		values</body>
</comment>

<class>
<name>SortedDictionary</name>
<environment>Smalltalk</environment>
<super>NewDictionary</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>elems </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>SortedDictionary</class-id>
<body>SortedDictionary implements NewDictionary as the array. Subclass if NewDictionary.Instance Variables:	elems	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of elems</body>
</comment>

<class>
<name>TreeDictionary</name>
<environment>Smalltalk</environment>
<super>NewDictionary</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root numElems bst </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>TreeDictionary</class-id>
<body>TreeDictionary- Binary Search Tree. Subclass of NewDictionary implemented as a Binary Search Tree.Instance Variables:	root	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of root</body>
</comment>

<class>
<name>BST</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root numNodes </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>BST</class-id>
<body>Binary Sarch Tree class. BST is made up of MyNode class instances. LgN search time.Instance Variables:	numNodes	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of numNodes	root	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of root</body>
</comment>

<methods>
<class-id>GUI class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'New Dictionary' 			#min: #(#{Core.Point} 20 20 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 88 406 614 602 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 5557 6360 7998 ) 				#setBorderColor: #(#{Graphics.ColorValue} #lightGray ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 13 0 18 0 193 0 39 0 ) 					#name: #CreateSortedDictionaryButton 					#model: #CreateSortedDictionary 					#label: 'Create Empty Sorted Dictionary' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 13 0 47 0 193 0 68 0 ) 					#name: #CreateTreeDictionaryButton 					#model: #CreateTreeDictionary 					#label: 'Create Empty Tree Dictionary' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 219 0 76 0 405 0 97 0 ) 					#name: #AddPairButton 					#model: #AddPair 					#label: 'Add Pair' 					#defaultable: true ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 288 0 115 0 508 0 178 0 ) 					#name: #LogTextEditor 					#model: #logTextEditor 					#tabRequiresControl: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 218 0 30 0 ) 					#name: #KeyLabel 					#label: 'Key:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 322 0 30 0 ) 					#name: #ValueLabel 					#label: 'Value:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 218 0 50 0 309 0 69 0 ) 					#name: #KeyToAddInputField 					#model: #keyToAdd ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 315 0 50 0 406 0 69 0 ) 					#name: #ValueToAddInputField 					#model: #valueToAdd ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 13 0 157 0 111 0 178 0 ) 					#name: #FindByKeyButton 					#model: #findByKey 					#label: 'Find By Key' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 12 0 115 0 ) 					#name: #Label1 					#label: 'Key:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 12 0 133 0 112 0 152 0 ) 					#name: #'KeyTo SearchInputField' 					#model: #keyToSearch ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 118 0 115 0 ) 					#name: #BlockLabel 					#label: 'Block:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 118 0 133 0 278 0 152 0 ) 					#name: #BlockToApplyInputField 					#model: #blockToApply ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 119 0 157 0 277 0 178 0 ) 					#name: #ApplyBlockButton 					#model: #applyBlock 					#label: 'Apply Block' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 423 0 20 0 508 0 41 0 ) 					#name: #DisplayPairsButton 					#model: #displayPairs 					#label: 'Display Pairs' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 423 0 48 0 508 0 69 0 ) 					#name: #DisplayKeysButton 					#model: #displayKeys 					#label: 'Display Keys' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 423 0 76 0 508 0 97 0 ) 					#name: #DisplayValuesButton 					#model: #displayValues 					#label: 'Display Values' 					#defaultable: true ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 12 0 75 0 194 0 98 0 ) 					#name: #TextEditor1 					#model: #infoField 					#tabRequiresControl: true ) ) ) )</body>
</methods>


<methods>
<class-id>GUI</class-id> <category>actions</category>

<body package="CS474" selector="findByKey">findByKey	"Find value by key"		| item |	item := dictionary at: (keyToSearch value).		((keyToSearch value) = '') ifFalse: [ 	"Not found"	(item = nil) ifTrue: [logTextEditor value: 'Not Found.'] 		"found, attach item to string message"		ifFalse: [logTextEditor value: 'Found: ',item printString].	]	ifTrue: [logTextEditor value: 'Enter Key to search for.'].	^self</body>

<body package="CS474" selector="displayValues">displayValues	"Triggers messages (methods) to collect and display values"	| items logMsg index |	logMsg := ''.	index := 1.	(dictionary = nil)	"no dictionary instance"	ifTrue: [logTextEditor value: 'Create dictionary first'.] 	"Collect items and build string to be displayed"	ifFalse: [		items := dictionary values.		((items size) = 0) ifTrue: [logTextEditor value: 'Dictionary is empty.'. ^self].		[index &lt;= (items size)] whileTrue: 		[			"build string message"			logMsg := logMsg,((items at: index) printString),' '.			index := index + 1.		].		logTextEditor value: logMsg.	].	^self</body>

<body package="CS474" selector="CreateTreeDictionary">CreateTreeDictionary	"Create TreeDictinary and update GUI label"	dictionary := TreeDictionary new.	infoField value: 'Using TreeDictionary'.		^self</body>

<body package="CS474" selector="displayKeys">displayKeys		"Triggers messages (methods) to collect and display keys"	| items logMsg index |	logMsg := ''.	index := 1.	(dictionary = nil)	"No dictionary instance exist"	ifTrue: [logTextEditor value: 'Create dictionary first'.] 	" get items and build string to be displayed"	ifFalse: [		items := dictionary keys.		((items size) = 0) ifTrue: [logTextEditor value: 'Dictionary is empty.'. ^self].		[index &lt;= (items size)] whileTrue: 		[			"concatinate to build string"			logMsg := logMsg,(items at: index),' '.			index := index + 1.		].		logTextEditor value: logMsg.	].	^self</body>

<body package="CS474" selector="AddPair">AddPair	"Add pair to dictionary and update GUI label"	(dictionary = nil)	ifFalse: 	[		((keyToAdd value) = '') ifFalse: [			((valueToAdd value) = '') ifFalse: [				dictionary add: (Association key: (keyToAdd value) value: ((valueToAdd value) asNumber)).				logTextEditor value: ('Added: ','(',((keyToAdd value) printString),', ',((valueToAdd value))),')'.			]			ifTrue: [logTextEditor value: 'Enter Value to insert.'.].		]		ifTrue: [logTextEditor value: 'Enter Key to insert.'.].	]	ifTrue: [logTextEditor value: 'Create dictionary first.'.].			^self</body>

<body package="CS474" selector="CreateSortedDictionary">CreateSortedDictionary	"Create SortedDictinary and update GUI label"	dictionary := SortedDictionary new.	infoField value: 'Using SortedDictionary'.	^self</body>

<body package="CS474" selector="applyBlock">applyBlock	"Triggers appropriate messages(methods) to appply block closure"	(dictionary = nil)	ifFalse: [		((blockToApply value) = '') ifFalse: [			dictionary do: (BlockClosure readFromString: (blockToApply value)).			logTextEditor value: 'Block ',(blockToApply value),' was applied.'		]		ifTrue: [logTextEditor value: 'Enter block to apply.'].	]	ifTrue: [logTextEditor value: 'Create dictionary first'].	^self</body>

<body package="CS474" selector="displayPairs">displayPairs	"Triggers messages (methods) to collect and display Pairs"	| items logMsg index |	logMsg := ''.	index := 1.	(dictionary = nil)	"No dictionary instance"	ifTrue: [logTextEditor value: 'Create dictionary first'.] 	"Collect items and build string to be displayed"	ifFalse: [		items := dictionary allPairs.		((items size) = 0) ifTrue: [logTextEditor value: 'Dictionary is empty.'. ^self].		[index &lt;= (items size)] whileTrue: 		[			"concatinate into string"			logMsg := logMsg,'(',((items at: index) key),', ',(((items at: index) value) printString),') '.			index := index + 1.		].		logTextEditor value: logMsg.	].	^self</body>
</methods>

<methods>
<class-id>GUI</class-id> <category>aspects</category>

<body package="CS474" selector="logTextEditor">logTextEditor	"displays most recent events"	^logTextEditor isNil		ifTrue:			[logTextEditor := String new asValue]		ifFalse:			[logTextEditor]</body>

<body package="CS474" selector="valueToAdd">valueToAdd	"Value to be added"	^valueToAdd isNil		ifTrue:			[valueToAdd := String new asValue]		ifFalse:			[valueToAdd]</body>

<body package="CS474" selector="keyToAdd">keyToAdd	"key field"	^keyToAdd isNil		ifTrue:			[keyToAdd := String new asValue]		ifFalse:			[keyToAdd]</body>

<body package="CS474" selector="keyToSearch">keyToSearch	"key to be searched for"	^keyToSearch isNil		ifTrue:			[keyToSearch := String new asValue]		ifFalse:			[keyToSearch]</body>

<body package="CS474" selector="infoField">infoField	"info field to show used dictionary type"	^infoField isNil		ifTrue:			[infoField := String new asValue]		ifFalse:			[infoField]</body>

<body package="CS474" selector="infoLabel">infoLabel	"inof label"		^infoLabel isNil		ifTrue:			[infoLabel := String new asValue]		ifFalse:			[infoLabel]</body>

<body package="CS474" selector="blockToApply">blockToApply	"Block field to be applied"	^blockToApply isNil		ifTrue:			[blockToApply := String new asValue]		ifFalse:			[blockToApply]</body>
</methods>


<methods>
<class-id>MyNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="CS474" selector="data:left:right:">data: d left: l right: r	^self new data: d left: l right: r.</body>
</methods>


<methods>
<class-id>MyNode</class-id> <category>accessing</category>

<body package="CS474" selector="right:">right: anObject	right := anObject</body>

<body package="CS474" selector="left:">left: anObject	left := anObject</body>

<body package="CS474" selector="right">right	^right</body>

<body package="CS474" selector="data:">data: anObject	data := anObject</body>

<body package="CS474" selector="data:left:right:">data: d left: l right: r	data := d.	left := l.	right := r.</body>

<body package="CS474" selector="left">left	^left</body>

<body package="CS474" selector="data">data	^data</body>
</methods>

<methods>
<class-id>MyNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	super initialize.	data := nil.	left := nil.	right := nil.		^self</body>
</methods>


<methods>
<class-id>NewDictionary class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>NewDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key	"deffered method"	^self subclassResponsibility</body>

<body package="CS474" selector="at:put:">at: key put: value	"deffered method"	^self subclassResponsibility</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>removing</category>

<body package="CS474" selector="remove:ifAbsent:">remove: oldObject ifAbsent: anExceptionBlock	"reject that message (method)"		^self shouldNotImplement</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	"deferred method"	^self subclassResponsibility</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	super initialize.	^self</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>operations</category>

<body package="CS474" selector="keys">keys	"Get all the keys from instance class"	^self subclassResponsibility</body>

<body package="CS474" selector="allPairs">allPairs	"Get all the pairs from instance class"		^self elems.</body>

<body package="CS474" selector="values">values	"Get all the values from instance class"		^self subclassResponsibility</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: anAssociation	"add element via calling self function method"	^self		at: anAssociation key 		put: anAssociation value.</body>
</methods>


<methods>
<class-id>SortedDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	"Aplly block to all elements"	1 to: (elems size) do:		[:index | aBlock value: (elems at: index)].			^self</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="elems">elems	^elems</body>

<body package="CS474" selector="at:put:">at: key put: value	"Insert ellement"	| item prev|	item := self at: key.		"key does not exist, just add and return nil"	(item = nil) ifTrue: [		elems add: (Association key: key value: value).		^nil.		]		"Key exist, update old value, return old data"		ifFalse: [			elems do: [:a | (a key = key) 	ifTrue: 									[prev := Association key: (a key) value: (a value).										a value: value.										^prev.										]]		].</body>

<body package="CS474" selector="elems:">elems: anObject	elems := anObject</body>

<body package="CS474" selector="at:">at: key		"Binary search for performace gain"		| left right med |		left := 1.	right := elems size.		" if false, element not found"	[left &lt;= right] whileTrue: 	[		"grab middle of array"		med := (left + right) // 2.		"found, return value"		(((elems at: med) key) = key) ifTrue: [^((elems at: med) value)].		"go left or right"		(((elems at: med) key) &lt; key) ifTrue: [left := med + 1]			ifFalse: [right := med - 1].	].		^nil.</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>operations</category>

<body package="CS474" selector="keys">keys	"Collect all keys and return them	"	| index keysCollection |	index := 1.	keysCollection := OrderedCollection new.	"add items to accumulator variable"	[index &lt;= (elems size)] whileTrue: [keysCollection add: ((elems at: index) key).		index := index + 1.].		^keysCollection.</body>

<body package="CS474" selector="values">values	"Collect all values and return them"	| index valuesCollection |	index := 1.	valuesCollection := OrderedCollection new.	"collect items into variable to be returned"	[index &lt;= (elems size)] whileTrue: [valuesCollection add: ((elems at: index) value).		index := index + 1.].		^valuesCollection.</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	super initialize.	elems := SortedCollection new.	^self</body>
</methods>


<methods>
<class-id>TreeDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	^bst applyBlock: aBlock.</body>
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key	^bst findByKey: key.</body>

<body package="CS474" selector="at:put:">at: key put: value		^(bst addNode: (Association key: key value: value)).</body>

<body package="CS474" selector="elems">elems	^bst getKeyValuesPairs.</body>
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>operations</category>

<body package="CS474" selector="values">values	^bst getValues.</body>

<body package="CS474" selector="updateNumElems:">updateNumElems: value	numElems := numElems + value.	^self</body>

<body package="CS474" selector="keys">keys		^bst getKeys.</body>
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	super initialize.	numElems := 0.	bst := BST new.		^self</body>
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="numNodes">numNodes	^numNodes</body>

<body package="CS474" selector="root:">root: anObject	root := anObject</body>

<body package="CS474" selector="numNodes:">numNodes: anObject	numNodes := anObject</body>

<body package="CS474" selector="root">root	^root</body>
</methods>

<methods>
<class-id>BST</class-id> <category>operations</category>

<body package="CS474" selector="getKeys">getKeys	^self collectKeysInOrder: root accumulator: OrderedCollection new.</body>

<body package="CS474" selector="addNode:">addNode: anAssociation	"Add new node to tree or update value of existing if key is already in tree"	| node curr prev key temp|	key := anAssociation key.	node := MyNode data: (anAssociation) left: nil right: nil.	prev := nil.	curr := root.		[curr = nil] whileFalse:		[		"already in tree, update node to update the value"		(key = (curr data) key)			ifTrue: 				[					temp := Association key: ((curr data) key) value: ((curr data) value).					curr data: anAssociation. 					^temp.				]			ifFalse:[						(key &lt; (curr data) key) 				"smaller, go left"				ifTrue: [prev := curr. curr := curr left.]				"bigger, go right"				ifFalse: [prev := curr. curr := curr right.].			].		].		"empty tree, insert at root"	(prev = nil) ifTrue: [root := node. numNodes := numNodes + 1.]				ifFalse: [					"smaller, insert to left"					(key &lt; (prev data) key) 						ifTrue: [prev left: node] 						"bigger, insert to right"						ifFalse: [prev right: node].					numNodes := numNodes + 1.				].					^nil.</body>

<body package="CS474" selector="getKeyValuesPairs">getKeyValuesPairs		^self collectPairsInOrder: root accumulator: OrderedCollection new.</body>

<body package="CS474" selector="applyBlock:">applyBlock: aBlock	^self applyBlockClosure: root block: aBlock</body>

<body package="CS474" selector="collectPairsInOrder:accumulator:">collectPairsInOrder: rt accumulator: items	"In order traversal"	"Base case"	(rt = nil)	ifTrue: [^self].		"Visit left"	self collectPairsInOrder: (rt left) accumulator: items.	"Collect"	items add: (rt data).	"Vist right"	self collectPairsInOrder: (rt right) accumulator: items.		^items</body>

<body package="CS474" selector="getValues">getValues	^self collectValuesInOrder: root accumulator: OrderedCollection new.</body>

<body package="CS474" selector="findByKey:">findByKey: key	|curr|	curr := root.		[curr = nil] whileFalse:		[		"already in tree, set curr to 'nil' to terminate loop"		(key = (curr data) key)			ifTrue: [^(curr data) value.]			ifFalse:[						(key &lt; (curr data) key) 				"smaller, go left"				ifTrue: [curr := curr left.]				"bigger, go right"				ifFalse: [curr := curr right.].			].		].					^nil.</body>

<body package="CS474" selector="applyBlockClosure:block:">applyBlockClosure: rt block: aBlock	"In order tree traversal"	"Base case"	(rt = nil)	ifTrue: [^self].		"visit left"	self applyBlockClosure: (rt left) block: aBlock.	"execute block"	aBlock value: (rt data).	"visit left"	self applyBlockClosure: (rt right) block: aBlock.		^self.</body>

<body package="CS474" selector="collectKeysInOrder:accumulator:">collectKeysInOrder: rt accumulator: items		"In order traversal"	"Base case"	(rt = nil)	ifTrue: [^self].		"visit left"	self collectKeysInOrder: (rt left) accumulator: items.	"collect"	items add: ((rt data) key).	"visit right"	self collectKeysInOrder: (rt right) accumulator: items.		^items</body>

<body package="CS474" selector="collectValuesInOrder:accumulator:">collectValuesInOrder: rt accumulator: items	"In order traversal"	"Base case"	(rt = nil)	ifTrue: [^self].		"Visit left"	self collectValuesInOrder: (rt left) accumulator: items.	"Collect"	items add: ((rt data) value).	"Visit right"	self collectValuesInOrder: (rt right) accumulator: items.		^items</body>
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	root := nil.	numNodes := 0.	^self</body>
</methods>



</st-source>
