//
// Created by Piotr Zbyszyński on 2014-04-22.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//


#import "ExampleTiledNode.h"


@implementation ExampleTiledNode

#pragma mark -
#pragma mark Properties

- (uint)rowsCount {

	return 1;
}

- (uint)columnsCount {

	return 2;
}


#pragma mark -
#pragma mark Methods

- (NSString *)imageFileNameForRow:(NSUInteger)row column:(NSUInteger)column {

	return [NSString stringWithFormat:@"sample_image_%lu%lu.jpg", (unsigned long) row, (unsigned long) column];
}

@end
