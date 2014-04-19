//
// Created by Piotr Zbyszyński on 2014-04-15.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//
//

#import "PIOScrollScene.h"



@implementation PIOScrollScene

#pragma mark -
#pragma mark Life cycle

- (instancetype)initWithSize:(CGSize)size {

	if (self = [super initWithSize:size]) {

		self.rootNode				= [[SKSpriteNode alloc] init];
		self.rootNode.anchorPoint	= CGPointZero;
		self.rootNode.position		= CGPointZero;

		[self addChild:self.rootNode];
	}

	return self;
}


#pragma mark -
#pragma mark Properties

- (CGFloat)scale {

	if (self.xScale != self.yScale) {

		@throw([NSException exceptionWithName:@"InvalidOperationException" reason:nil userInfo:nil]);
	}

	return self.xScale;
}

- (CGFloat)maximumZoomScale {

	return 1;
}

- (CGFloat)minimumZoomScale {

	return 1;
}

- (CGFloat)initialZoomScale {
	
	return 1;
}


#pragma mark -
#pragma mark Methods

- (void)stopScene {

	[self removeAllActions];
}


@end
