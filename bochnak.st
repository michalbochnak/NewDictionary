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
<body>MyNode stores data (Association pair: key &lt;-&gt; value), pointer to the left node, and pointer to the right node in the binary search tree.
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
<body>NewDictionary is a abstract class for dictionary.
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
<body>SortedDictionary implements NewDictionary as the array. Subclass if NewDictionary.
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
<body>TreeDictionary- Binary Search Tree. Subclass of NewDictionary implemented as a Binary Search Tree.
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
<body>Binary Sarch Tree class. BST is made up of MyNode class instances. LgN search time.
</comment>

<methods>
<class-id>GUI class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>GUI</class-id> <category>actions</category>

<body package="CS474" selector="findByKey">findByKey

<body package="CS474" selector="displayValues">displayValues

<body package="CS474" selector="CreateTreeDictionary">CreateTreeDictionary

<body package="CS474" selector="displayKeys">displayKeys

<body package="CS474" selector="AddPair">AddPair

<body package="CS474" selector="CreateSortedDictionary">CreateSortedDictionary

<body package="CS474" selector="applyBlock">applyBlock

<body package="CS474" selector="displayPairs">displayPairs
</methods>

<methods>
<class-id>GUI</class-id> <category>aspects</category>

<body package="CS474" selector="logTextEditor">logTextEditor

<body package="CS474" selector="valueToAdd">valueToAdd

<body package="CS474" selector="keyToAdd">keyToAdd

<body package="CS474" selector="keyToSearch">keyToSearch

<body package="CS474" selector="infoField">infoField

<body package="CS474" selector="infoLabel">infoLabel

<body package="CS474" selector="blockToApply">blockToApply
</methods>


<methods>
<class-id>MyNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new

<body package="CS474" selector="data:left:right:">data: d left: l right: r
</methods>


<methods>
<class-id>MyNode</class-id> <category>accessing</category>

<body package="CS474" selector="right:">right: anObject

<body package="CS474" selector="left:">left: anObject

<body package="CS474" selector="right">right

<body package="CS474" selector="data:">data: anObject

<body package="CS474" selector="data:left:right:">data: d left: l right: r

<body package="CS474" selector="left">left

<body package="CS474" selector="data">data
</methods>

<methods>
<class-id>MyNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>NewDictionary class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>NewDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key

<body package="CS474" selector="at:put:">at: key put: value
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>removing</category>

<body package="CS474" selector="remove:ifAbsent:">remove: oldObject ifAbsent: anExceptionBlock
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>operations</category>

<body package="CS474" selector="keys">keys

<body package="CS474" selector="allPairs">allPairs

<body package="CS474" selector="values">values
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: anAssociation
</methods>


<methods>
<class-id>SortedDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="elems">elems

<body package="CS474" selector="at:put:">at: key put: value

<body package="CS474" selector="elems:">elems: anObject

<body package="CS474" selector="at:">at: key
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>operations</category>

<body package="CS474" selector="keys">keys

<body package="CS474" selector="values">values
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>TreeDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key

<body package="CS474" selector="at:put:">at: key put: value

<body package="CS474" selector="elems">elems
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>operations</category>

<body package="CS474" selector="values">values

<body package="CS474" selector="updateNumElems:">updateNumElems: value

<body package="CS474" selector="keys">keys
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="numNodes">numNodes

<body package="CS474" selector="root:">root: anObject

<body package="CS474" selector="numNodes:">numNodes: anObject

<body package="CS474" selector="root">root
</methods>

<methods>
<class-id>BST</class-id> <category>operations</category>

<body package="CS474" selector="getKeys">getKeys

<body package="CS474" selector="addNode:">addNode: anAssociation

<body package="CS474" selector="getKeyValuesPairs">getKeyValuesPairs

<body package="CS474" selector="applyBlock:">applyBlock: aBlock

<body package="CS474" selector="collectPairsInOrder:accumulator:">collectPairsInOrder: rt accumulator: items

<body package="CS474" selector="getValues">getValues

<body package="CS474" selector="findByKey:">findByKey: key

<body package="CS474" selector="applyBlockClosure:block:">applyBlockClosure: rt block: aBlock

<body package="CS474" selector="collectKeysInOrder:accumulator:">collectKeysInOrder: rt accumulator: items

<body package="CS474" selector="collectValuesInOrder:accumulator:">collectValuesInOrder: rt accumulator: items
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>