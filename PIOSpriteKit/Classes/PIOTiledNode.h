//
// Created by Piotr Zbyszyński on 13-10-17.
// Copyright (c) 2013 Touch Some Magic. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>


@interface PIOTiledNode : SKSpriteNode

#pragma mark -
#pragma mark Properties

@property (nonatomic, readonly)	uint rowsCount;
@property (nonatomic, readonly) uint columnsCount;


#pragma mark -
#pragma mark Methods

- (instancetype)load;
- (NSString *)imageFileNameForRow:(NSUInteger)row column:(NSUInteger)column;

@end


