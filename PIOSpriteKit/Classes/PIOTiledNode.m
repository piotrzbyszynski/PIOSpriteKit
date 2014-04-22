//
// Created by Piotr Zbyszyński on 13-10-17.
// Copyright (c) 2013 Touch Some Magic. All rights reserved.
//


#import "PIOTiledNode.h"


@implementation PIOTiledNode


#pragma mark -
#pragma mark Properties

- (uint)rowsCount {

	@throw([NSException exceptionWithName:@"NotImplementedException" reason:nil userInfo:nil]);
}

- (uint)columnsCount {

	@throw([NSException exceptionWithName:@"NotImplementedException" reason:nil userInfo:nil]);
}


#pragma mark -
#pragma mark Methods

- (instancetype)load {

	uint x				= 0;
	uint y				= 0;
	uint width			= 0;
	uint height			= 0;


	self.anchorPoint	= CGPointZero;

	for (uint i = 0; i < self.rowsCount; i++) {

		for (uint j = 0; j < self.columnsCount; j++) {

			SKSpriteNode *node	=	[[SKSpriteNode alloc] initWithTexture:[SKTexture textureWithImageNamed:[self imageFileNameForRow:i column:j]]];

			node.anchorPoint	= CGPointZero;
			node.position		= CGPointMake(x, y);



			if (j == self.columnsCount - 1) {

				if (i == self.rowsCount - 1) {

					width		= (uint) (x + node.size.width);
					height		= (uint) (y + node.size.height);
				}


				x				= 0;
				y				= (uint) (y + node.size.height);
			}
			else {

				x				= (uint) (x + node.size.width);
			}

			[self addChild:node];
		}
	}

	self.size					= CGSizeMake(width, height);


	return self;
}

- (NSString *)imageFileNameForRow:(NSUInteger)row column:(NSUInteger)column  {

	@throw([NSException exceptionWithName:@"NotImplementedException" reason:nil userInfo:nil]);
}


@end


