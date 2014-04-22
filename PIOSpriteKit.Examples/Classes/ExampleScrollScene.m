//
// Created by Piotr Zbyszyński on 2014-04-13.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//


#import "ExampleScrollScene.h"
#import "ExampleTiledNode.h"


@implementation ExampleScrollScene


#pragma mark -
#pragma mark Initialization

- (instancetype)initWithSize:(CGSize)size tiledBackground:(BOOL)tiledBackground {

	if([super initWithSize:size] != nil) {

		SKSpriteNode *backgroundNode;

		//Standard node as background

		if (!tiledBackground) {

			backgroundNode				= [SKSpriteNode spriteNodeWithImageNamed:@"sample_image.jpg"];
		}
		else {

			//Tiled node as background
			backgroundNode				= [[[ExampleTiledNode alloc] init] load];
		}


		backgroundNode.anchorPoint	= CGPointZero;
		backgroundNode.position		= CGPointZero;

		self.rootNode.size			= backgroundNode.size;


		[self.rootNode addChild:backgroundNode];
	}

	return self;
}


#pragma mark -
#pragma mark Properties

- (CGFloat)minimumZoomScale {

	return 0.5;
}

- (CGFloat)initialZoomScale {

	return 0.5;
}


@end

