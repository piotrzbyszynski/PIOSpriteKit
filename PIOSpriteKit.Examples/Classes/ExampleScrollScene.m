//
// Created by Piotr Zbyszyński on 2014-04-13.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//


#import "ExampleScrollScene.h"



@implementation ExampleScrollScene


#pragma mark -
#pragma mark Initialization

- (instancetype)initWithSize:(CGSize)size {

	if([super initWithSize:size] != nil) {


		self.rootNode.texture		= [SKTexture textureWithImageNamed:@"sample_image.jpg"];
  	 	self.rootNode.size			= self.rootNode.texture.size;
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

