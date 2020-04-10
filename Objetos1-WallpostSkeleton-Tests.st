TestCase subclass: #WallpostTest	instanceVariableNames: 'wallpost coolPost'	classVariableNames: ''	poolDictionaries: ''	category: 'Objetos1-WallpostSkeleton-Tests'!!WallpostTest commentStamp: '<historical>' prior: 0!A WallpostTest is a test class for testing the behavior of Wallpost!!WallpostTest methodsFor: 'running' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!setUp
	wallpost := Wallpost new.
	coolPost := Wallpost new.
	coolPost
		like;
		like;
		like;
		like; toggleFeatured 
		 ! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testWallpost
    self assert:   wallpost likes  = 0 .
 ! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testFeatured
 self deny:  wallpost isFeatured.
 ! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testLike
	self assert: wallpost likes = 0.
	wallpost like.
	self assert: wallpost likes = 1.
	wallpost
		like;
		like;
		like.
	self assert: wallpost likes = 4! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testDislike
	coolPost dislike.
	self assert: coolPost likes = 3.
	coolPost
		dislike;
		dislike.
	self assert: coolPost likes = 1.
	coolPost dislike.
	self assert: coolPost likes = 0.
	coolPost dislike.
	self assert: coolPost likes = 0! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testToggleFeatured
	self assert: wallpost toggleFeatured isFeatured.
	self deny: coolPost toggleFeatured isFeatured! !!WallpostTest methodsFor: 'testing' stamp: 'CompatibleUserName 8/21/2019 14:50:07'!testText
	wallpost text: 'hello'.
	self assert: wallpost text = 'hello'.
      wallpost text: 'bye'.
	self assert: wallpost text = 'bye'.
	! !