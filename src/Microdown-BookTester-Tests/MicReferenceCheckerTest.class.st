Class {
	#name : 'MicReferenceCheckerTest',
	#superclass : 'MicFileTest',
	#instVars : [
		'fileDefAncS1UndAncS0',
		'refAncS1',
		'defEq1AndReferToEq1',
		'defAndRefFig1',
		'defFig1AndRefToAnsC0',
		'defFig1AndRefToAncUnkS0',
		'refToUnkS1'
	],
	#category : 'Microdown-BookTester-Tests',
	#package : 'Microdown-BookTester-Tests'
}

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defAnCS0DoubleEq2DoubleEq1RefEq1 [

	| defAnCS0DoubleEq2DoubleEq1RefEq1 |
	defAnCS0DoubleEq2DoubleEq1RefEq1 := dir
	                                    /
	                                    'defAnCS0DoubleEq2DoubleEq1RefEq1.md'.
	defAnCS0DoubleEq2DoubleEq1RefEq1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

$$ %anchor=Eq1
balbalbalb! 
$$

$$ %anchor=Eq2
balbalbalb! 
$$

$$ %anchor=Eq2
balbalbalb! 
$$

$$ %anchor=Eq1
balbalbalb! 
$$

See *@Eq1@* 

' ].
	defAnCS0DoubleEq2DoubleEq1RefEq1 ensureCreateFile.
	^ defAnCS0DoubleEq2DoubleEq1RefEq1
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defAncS0DoubleFig1Fig2RefAncS1 [

	| doubleFig1 |
	doubleFig1 := dir / 'defAncS0DoubleFig1Fig2RefAncS1.md'.
	doubleFig1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

![a caption 1](figures/f.png anchor=fig1)

![a caption 2](figures/f.png anchor=fig1)

![a caption 2](figures/f.png anchor=fig1)

![a caption 2](figures/f.png anchor=fig1)

![a caption 3](figures/f.png anchor=fig2)

See *@ancS1@* 

' ].
	doubleFig1 ensureCreateFile.
	^ doubleFig1
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defAncS0TripleAncS1RefAncS1AncS0 [

	| defAncS0TripleAncS1RefAncS1AncS0 |
	defAncS0TripleAncS1RefAncS1AncS0 := dir / 'defAncS0TripleAncS1RefAncS1AncS0.md'.
	defAncS0TripleAncS1RefAncS1AncS0 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

# Section 1
@ancS1

# Section 2
@ancS1

# Section 3
@ancS1

See *@ancS1@* and *@ancS0@*

' ].
	defAncS0TripleAncS1RefAncS1AncS0 ensureCreateFile.
	^ defAncS0TripleAncS1RefAncS1AncS0
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defEq1AndReferToEq1 [

	defEq1AndReferToEq1 := fs / 'defEq1AndReferToEq1.md'.
	defEq1AndReferToEq1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
	
$$ %anchor=Eq1
balbalbalb! 
$$
See *@Eq1@*

' ].
	defEq1AndReferToEq1 ensureCreateFile
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defFig1AndRefFig1 [

	defAndRefFig1 := dir / 'defAndRefFig1.md'.
	defAndRefFig1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
		
![alittle caption.](figures/f.png anchor=Fig1)

See *@Fig1@*

' ].
	defAndRefFig1 ensureCreateFile.
	^ defAndRefFig1
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defFig1AndRefToAncS0 [

	defFig1AndRefToAnsC0 := fs / 'defFig1AndRefToAncS0.md'.
	defFig1AndRefToAnsC0 ensureCreateFile.
	defFig1AndRefToAnsC0 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
![alittle caption.](figures/f.png anchor=Fig1)

See *@ancS0@*

' ]
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> defFig1AndRefToAncUnkS0 [

	defFig1AndRefToAncUnkS0 := fs / 'defFig1AndRefToAncUnkS0.md'.
	defFig1AndRefToAncUnkS0 ensureCreateFile.
	defFig1AndRefToAncUnkS0 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
![alittle caption.](figures/f.png anchor=Fig1)

See *@ancUnkS0@*

' ].
	defFig1AndRefToAncUnkS0 ensureCreateFile
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> duplicatedFigSecEq [

	| conflictBetweenFigSecEq |
	conflictBetweenFigSecEq := dir / 'duplicatedFigSecEq.md'.
	conflictBetweenFigSecEq writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

![a caption 1](figures/f.png anchor=ancS1)

# Section 1
@ancS1

We have a duplication between the section and the figure.

# Section 3
@ancS3

We have a duplication between section and equation
$$ %anchor=ancS0
balbalbalb! 
$$

Here we have a duplication between the figure and the equation

![a caption 1](figures/f.png anchor=fig2)

$$ %anchor=fig2
balbalbalb! 
$$

See *@ancS1@* and *@ancS0@*

' ].
	conflictBetweenFigSecEq ensureCreateFile.
	^ conflictBetweenFigSecEq
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> duplicatedFigSecEqPart1 [

	| duplicatedFigSecEqPart1 |
	duplicatedFigSecEqPart1 := dir / 'duplicatedFigSecEqPart1.md'.
	duplicatedFigSecEqPart1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

![a caption 1](figures/f.png anchor=ancS1)


$$ %anchor=fig2
balbalbalb! 
$$


# Section 3
@ancS3

'
 ].
	duplicatedFigSecEqPart1 ensureCreateFile.
	^ duplicatedFigSecEqPart1
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> duplicatedFigSecEqPart2 [

	| duplicatedFigSecEqPart2 |
	duplicatedFigSecEqPart2 := dir / 'duplicatedFigSecEqPart2.md'.
	duplicatedFigSecEqPart2 writeStreamDo: [ :stream |
		stream nextPutAll: '
# Duplication with Figure

@ancS1

We have a duplication between section and equation
$$ %anchor=ancS0
balbalbalb! 
$$

Here we have a duplication between the figure and the equation

![a caption 1](figures/f.png anchor=fig2)

See *@ancS1@* and *@ancS0@*

' ].
	duplicatedFigSecEqPart2 ensureCreateFile.
	^ duplicatedFigSecEqPart2
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> fileDefAncS1UndAncS0 [

	fileDefAncS1UndAncS0 := fs / 'fileDefAncS1UndAncS0.md'.
	fileDefAncS1UndAncS0 ensureCreateFile.
	fileDefAncS1UndAncS0 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
		
![alittle caption.](figures/f.png anchor=ancS1)

See *@ancS0@*

' ].
	fileDefAncS1UndAncS0 ensureCreateFile 
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> fileRefAncS1 [

	refAncS1 := fs/ 'fileRefAncS1.md'.
	refAncS1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1

See *@ancS1@*
' ].
	refAncS1 ensureCreateFile
]

{ #category : 'helpers - anchors & references' }
MicReferenceCheckerTest >> refToUnkS1 [

	refToUnkS1 := fs / 'refToUnkS1.md'.
	refToUnkS1 ensureCreateFile.

	refToUnkS1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1

See *@ancS1@*

' ]
]

{ #category : 'running' }
MicReferenceCheckerTest >> setUp [

	super setUp.
	fs := self fileSystem.
	dir := fs / 'myDirectory'.
	dir ensureCreateDirectory
]

{ #category : 'tests - single file ok references' }
MicReferenceCheckerTest >> testDefAndReferToAMathEquationInFile [

	| visitor |
	self defEq1AndReferToEq1.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs.
	visitor checkProject: defEq1AndReferToEq1.
	self assert: visitor isOkay.
	self assert: visitor results isEmpty
]

{ #category : 'tests - single file' }
MicReferenceCheckerTest >> testDefFig1AndRefToAncS0UnknowAnchor [

	| visitor |
	self defFig1AndRefToAncS0.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs.
	visitor checkProject: defFig1AndRefToAnsC0.
	self deny: visitor isOkay.
	self assert: visitor results first anchorLabel equals: 'ancS0'.
	self
		assert: visitor results first source
		equals: '/defFig1AndRefToAncS0.md'
]

{ #category : 'tests - single file ok references' }
MicReferenceCheckerTest >> testDefFig1AndRefToAncUnkS0 [

	| visitor |
	self defFig1AndRefToAncUnkS0.
	visitor := MicReferenceChecker new.
	visitor checkList: { defFig1AndRefToAncUnkS0 }.
	self deny: visitor isOkay.
	self assert: visitor results size equals: 1.
	self assert: visitor results first anchorLabel equals: 'ancUnkS0'.
	self assert: visitor results first source equals: '/defFig1AndRefToAncUnkS0.md'
]

{ #category : 'tests - single file ok references' }
MicReferenceCheckerTest >> testDefFig1AndReferToFig1 [

	| visitor |
	self defFig1AndRefFig1.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs.
	visitor checkProject: defAndRefFig1.
	self assert: visitor isOkay.
	self assert: visitor results isEmpty
]

{ #category : 'tests - single file ok references' }
MicReferenceCheckerTest >> testDefFig1ReferToAFigureInFile [

	| visitor |
	self defFig1AndRefFig1.
	visitor := MicReferenceChecker new.
	visitor checkList: { defAndRefFig1 }.
	self assert: visitor isOkay.
	
]

{ #category : 'tests - single file' }
MicReferenceCheckerTest >> testDefS1ButRefersToS0UnknownAnchor [

	| visitor |
	self fileDefAncS1UndAncS0.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs.
	visitor checkProject:  fileDefAncS1UndAncS0.
	self deny: visitor isOkay.
	self assert: visitor results size equals: 1.
	self assert: visitor results first anchorLabel equals: 'ancS0'.
	self
		assert: visitor results first source
		equals: '/fileDefAncS1UndAncS0.md'
]

{ #category : 'tests - directory api' }
MicReferenceCheckerTest >> testDirWithReferenceInAnotherFile [

	| aSectionWithAnchorAndRef file2 visitor |
	aSectionWithAnchorAndRef := dir / 'aSectionWithAnchorAndRef.md'.
	aSectionWithAnchorAndRef writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 1
@ancS1

See *@ancS1@* and *@ancS2@*

' ].
	aSectionWithAnchorAndRef ensureCreateFile.

	file2 := dir / 'justReferenceToSection.md'.
	file2 writeStreamDo: [ :stream2 |
		stream2 nextPutAll: ' 
# Section 2
@ancS2

Just a reference See *@ancS1@*  ' ].
	file2 ensureCreateFile.

	visitor := MicReferenceChecker new.
	visitor checkDirectory: dir.
	self assert: visitor isOkay
	


]

{ #category : 'skipped for now' }
MicReferenceCheckerTest >> testDuplicatedAnchorDir [

	| dir file1 file2 visitor   |
	self skip.
	dir := (FileSystem workingDirectory / 'myDirectory') asFileReference.
   dir ensureCreateDirectory.
	
	file1 := (FileSystem workingDirectory / 'myDirectory' / 'file1.txt') asFileReference.
	file1 writeStreamDo: [ :stream | stream nextPutAll: '# Section 
@anchorSection0

# Section 1
@anchorSection1


' ] .
	file1 ensureCreateFile .
	
	file2 := (FileSystem workingDirectory / 'myDirectory' / 'file2.txt') asFileReference.
	file2 writeStreamDo: [ :stream | stream nextPutAll: '# Section 
@anchorSection3

# Section 4
@anchorSection1


'] .
   file2 ensureCreateFile . 

	visitor := MicReferenceChecker new.

	self deny: ( visitor checkDirectory: dir ) 
	
]

{ #category : 'tests - directory api' }
MicReferenceCheckerTest >> testDuplicatedAnchorInDifferentFilesOfTheSameDir [

	| file1 file2 visitor dict duplicated |
	file1 := dir / 'file1.md'.
	file1 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS0

# Section 1
@ancS1
' ].
	file1 ensureCreateFile.
	file2 := dir / 'file2.md'.
	file2 writeStreamDo: [ :stream |
		stream nextPutAll: '# Section 
@ancS3

# Section 4
@ancS1
' ].
	file2 ensureCreateFile.

	visitor := MicReferenceChecker new.
	visitor checkDirectory: dir.
	self deny: visitor isOkay.

	self assert: visitor duplicatedAnchors size equals: 1.
	self
		assert: visitor duplicatedAnchors first anchorLabel
		equals: 'ancS1'.
	dict := visitor results groupedBy: [ :each | each class ].
	duplicated := (dict at: MicDuplicatedAnchorResult) first.
	self assert: duplicated source equals: '/myDirectory/file2.md'.
	self assert: duplicated anchorLabel equals: 'ancS1'
		
	

]

{ #category : 'tests - duplicated' }
MicReferenceCheckerTest >> testDuplicatedAnchors [

	| defAncS0TripleAncS1RefAncS1AncS0 checker dict dup1 |
	defAncS0TripleAncS1RefAncS1AncS0 := self defAncS0TripleAncS1RefAncS1AncS0.
	checker := MicReferenceChecker new.
	checker checkList: { defAncS0TripleAncS1RefAncS1AncS0 }.
	self deny: checker isOkay.
	self
		assert: (checker results collect: [ :each | each anchorLabel ])
		equals: OrderedCollection <- #( 'ancS1' 'ancS1' ).
		
	dict := checker results groupedBy: [ :each | each class ].
	
	dup1 := (dict at: MicDuplicatedAnchorResult) first.
	self assert: dup1 source equals: '/myDirectory/defAncS0TripleAncS1RefAncS1AncS0.md'.
	self assert: dup1 anchorLabel equals: 'ancS1'.
	
	
]

{ #category : 'tests - duplicated' }
MicReferenceCheckerTest >> testDuplicatedBetweenSectionFigureEq [

	| conflictBetweenFigSecEq visitor |
	conflictBetweenFigSecEq := self duplicatedFigSecEq.
	visitor := MicReferenceChecker new.
	visitor checkList: { conflictBetweenFigSecEq }.
	self deny: visitor isOkay.
	self
		assert: (visitor results collect: [ :each | each anchorLabel ])
		equals: OrderedCollection <- #( 'ancS1' 'ancS0' 'fig2' )
]

{ #category : 'tests - duplicated' }
MicReferenceCheckerTest >> testDuplicatedBetweenSectionFigureEqInDifferentFile [

	| duplicatedFigSecEqPart1 duplicatedFigSecEqPart2 visitor |
	duplicatedFigSecEqPart1 := self duplicatedFigSecEqPart1.
	duplicatedFigSecEqPart2 := self duplicatedFigSecEqPart2.
	visitor := MicReferenceChecker new.
	visitor checkList: { duplicatedFigSecEqPart1 . duplicatedFigSecEqPart2 }.
	self deny: visitor isOkay.
	self
		assert: (visitor results collect: [ :each | each anchorLabel ])
		equals: OrderedCollection <- #( 'ancS1' 'ancS0' 'fig2' )
]

{ #category : 'tests - duplicated' }
MicReferenceCheckerTest >> testDuplicatedFigures [

	| doubleFig1 checker dict dup1 |
	doubleFig1 := self defAncS0DoubleFig1Fig2RefAncS1.
	checker := MicReferenceChecker new.
	checker checkList: { doubleFig1 }.
	self deny: checker isOkay.
	self
		assert: (checker results collect: [ :each | each anchorLabel ])
		equals: OrderedCollection <- #( 'fig1' 'fig1' 'fig1' 'ancS1' ).
		
	dict := checker results groupedBy: [ :each | each class ].
	
	dup1 := (dict at: MicDuplicatedAnchorResult) first.
	self assert: dup1 source equals: '/myDirectory/defAncS0DoubleFig1Fig2RefAncS1.md'.
	self assert: dup1 anchorLabel equals: 'fig1'.
	
	
]

{ #category : 'tests - duplicated' }
MicReferenceCheckerTest >> testDuplicatedMaths [

	| defAnCS0DoubleEq2DoubleEq1RefEq1 checker dict dup1 dup2 |
	defAnCS0DoubleEq2DoubleEq1RefEq1 := self defAnCS0DoubleEq2DoubleEq1RefEq1.
	checker := MicReferenceChecker new.
	checker checkList: { defAnCS0DoubleEq2DoubleEq1RefEq1 }.
	self deny: checker isOkay.
	self
		assert: checker results first source
		equals: defAnCS0DoubleEq2DoubleEq1RefEq1 fullName.
	self
		assert: (checker results collect: [ :each | each anchorLabel ])
		equals: OrderedCollection <- #( 'Eq2' 'Eq1' ).
		
	dict := checker results groupedBy: [ :each | each class ].
	
	dup1 := (dict at: MicDuplicatedAnchorResult) first.
	self assert: dup1 source equals: '/myDirectory/defAnCS0DoubleEq2DoubleEq1RefEq1.md'.
	self assert: dup1 anchorLabel equals: 'Eq2'.
	
	dup2 := (dict at: MicDuplicatedAnchorResult) second.
	self assert: dup2 source equals: '/myDirectory/defAnCS0DoubleEq2DoubleEq1RefEq1.md'.
	self assert: dup2 anchorLabel equals: 'Eq1'.
]

{ #category : 'tests - full project' }
MicReferenceCheckerTest >> testFullProjectWithFowardAndBackWardRefBetweenTwoFiles [

	| checker |
	self createProjectCorrectReferencesOnTwoFiles.
	checker := MicReferenceChecker new.
	checker fileSystem: fs.
	checker checkProject: section1.
	self assert: checker isOkay
]

{ #category : 'tests - full project' }
MicReferenceCheckerTest >> testFullProjectWithReferencesToUnknowAnchor [

	| checker dict unk undefined |
	self createProjectBadAndCorrectReferences.
	checker := MicReferenceChecker new.
	checker fileSystem: fs.
	checker checkProject: section1.
	self deny: checker isOkay.
	self assert: checker results size equals: 2.

	dict := checker results groupedBy: [ :each | each class ].
	
	unk := (dict at: MicUndefinedAnchorResult) first.
	self assert: unk source equals: '/myDirectory/sections/section2.md'.
	self assert: unk anchorLabel equals: 'ancUnkS2'.
	
	undefined := (dict at: MicUndefinedInputFileResult) first.
	self assert: undefined source equals: '/myDirectory/sections/section2.md'.


]

{ #category : 'tests - internal - parse only' }
MicReferenceCheckerTest >> testLowLevelAllReferencesAreCorrect [

	| doc visitor |
	doc := Microdown parse:	'# Section 1
@anchorSection1

See *@anchorSection1@*

'.
	visitor := MicReferenceChecker new. 
	doc accept: visitor. 
	visitor collectBadReferences. 
	self assert: visitor isOkay
]

{ #category : 'tests - internal - parse only' }
MicReferenceCheckerTest >> testLowLevelReferToAFigure [

	| doc visitor |
	doc := Microdown parse: '# Section 1
![alittle caption.](figures/f.png anchor=anchorSection1)

See *@anchorSection1@*

'.
	visitor := MicReferenceChecker new.
	doc accept: visitor.
	visitor collectBadReferences. 
	self assert: visitor isOkay
]

{ #category : 'tests - internal - parse only' }
MicReferenceCheckerTest >> testLowLevelReferToAMathEquation [

	| doc visitor |
	doc := Microdown parse: '# Section 1
	
$$ %anchor=anchorSection1
balbalbalb! 
$$
See *@anchorSection1@*

'.
	visitor := MicReferenceChecker new.
	doc accept: visitor.
	visitor collectBadReferences. 
	self assert: visitor isOkay
]

{ #category : 'tests - internal - parse only' }
MicReferenceCheckerTest >> testLowLevelReferToAnUknownAnchor [

	| doc visitor |
	doc := Microdown parse: '# Section 1

See *@anchorSection1@*

'.
	doc fromFile: 'fakedFile'.
	visitor := MicReferenceChecker new.
	doc accept: visitor.
	visitor collectBadReferences. 
	self deny: visitor isOkay
]

{ #category : 'tests - single file' }
MicReferenceCheckerTest >> testRefToUnkS1 [

	| visitor |
	self refToUnkS1.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs. 
	visitor checkProject: refToUnkS1.
	self deny: visitor isOkay
	

]

{ #category : 'tests - single file' }
MicReferenceCheckerTest >> testRefersToUnkAncS1 [

	| visitor |
	self fileRefAncS1.
	visitor := MicReferenceChecker new.
	visitor fileSystem: fs. 
	visitor checkProject: refAncS1.
	self deny: visitor isOkay.
	self assert: visitor results size equals: 1.
	self assert: visitor results first anchorLabel equals: 'ancS1'.
	self assert: visitor results first source equals: '/fileRefAncS1.md'
]

{ #category : 'skipped for now' }
MicReferenceCheckerTest >> testReportingUnknownAnchorDir [

	| dir file1 file2 visitor |
	self skip.
	dir := (FileSystem workingDirectory / 'myDirectory') asFileReference.
   dir ensureCreateDirectory.
	
	file1 := (FileSystem workingDirectory / 'myDirectory' / 'file1.txt') asFileReference.
	file1 writeStreamDo: [ :stream | stream nextPutAll: '# Section 
@anchorSection0

# Section 1
@anchorSection1


' ].
	file1 ensureCreateFile.
	
	file2 := (FileSystem workingDirectory / 'myDirectory' / 'file2.txt') asFileReference.
	file2 writeStreamDo: [ :stream | stream nextPutAll: ' See *@anchorSection1@* and *@anchorSection2@*'].
   file2 ensureCreateFile. 

	visitor := MicReferenceChecker new.

	self deny: (visitor checkDirectory: dir).
	
	file1 ensureDelete.
   file2 ensureDelete.
   dir ensureDelete 
	
]

{ #category : 'tests - undefined files' }
MicReferenceCheckerTest >> testUndefinedInputFilesAreMentionedInResult [

	| checker |
	self createProjectWithUnexistingSection3And5.
	checker := MicReferenceChecker new.
	checker fileSystem: fs.
	checker checkProject: section1.

	self assert: checker results size equals: 3.
	 checker results do: [ :each | 
		self
			assert: each class
			equals: MicUndefinedInputFileResult].
	
	(checker results collect: [ :each | each inputFileBlock path path "Ugly API to improve later" ]) 
		do: [ :each | 
					self 
						assert:  
				({ 
				'/myDirectory/sections/section3.md' .
				'/myDirectory/sections/subsections/section5.md' . 
				'/myDirectory/sections/subsections/section3.md' 
				}  includes: each)
			]

]
