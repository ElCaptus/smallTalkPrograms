TestCase subclass: #WallpostTest
	wallpost := Wallpost new.
	coolPost := Wallpost new.
	coolPost
		like;
		like;
		like;
		like; toggleFeatured 
		 ! !
    self assert:   wallpost likes  = 0 .
 ! !
 self deny:  wallpost isFeatured.
 ! !
	self assert: wallpost likes = 0.
	wallpost like.
	self assert: wallpost likes = 1.
	wallpost
		like;
		like;
		like.
	self assert: wallpost likes = 4! !
	coolPost dislike.
	self assert: coolPost likes = 3.
	coolPost
		dislike;
		dislike.
	self assert: coolPost likes = 1.
	coolPost dislike.
	self assert: coolPost likes = 0.
	coolPost dislike.
	self assert: coolPost likes = 0! !
	self assert: wallpost toggleFeatured isFeatured.
	self deny: coolPost toggleFeatured isFeatured! !
	wallpost text: 'hello'.
	self assert: wallpost text = 'hello'.
      wallpost text: 'bye'.
	self assert: wallpost text = 'bye'.
	! !