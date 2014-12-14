//
//  PIOStaticNode.m
//  TheDragonOfWawel
//
//  Created by Piotr Zbyszyński on 2014-12-14.
//  Copyright (c) 2014 Touch Some Magic. All rights reserved.
//

#import "PIOStaticNode.h"



@implementation PIOStaticNode

#pragma mark -
#pragma mark Lifetime

- (instancetype)init {

	if ((self = [super initWithTexture:[SKTexture textureWithImageNamed:[self imageFileName]]]) != nil) {

		self.anchorPoint	= CGPointZero;
	}

	return self;
}


#pragma mark -
#pragma mark Methods

- (instancetype)load {

	return self;
}

- (NSString *)imageFileName {

	@throw([NSException exceptionWithName:@"NotImplementedException" reason:nil userInfo:nil]);
}



@end
