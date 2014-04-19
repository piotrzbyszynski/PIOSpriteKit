//
// Created by Piotr Zbyszyński on 2014-04-15.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//

@import Foundation;
@import SpriteKit;


@interface PIOScrollScene : SKScene

#pragma mark -
#pragma mark Properties

@property (nonatomic, strong)	SKSpriteNode	*rootNode;
@property (nonatomic, readonly) CGFloat 		scale;
@property (nonatomic, readonly)	CGFloat 		initialZoomScale;
@property (nonatomic, readonly)	CGFloat 		maximumZoomScale;
@property (nonatomic, readonly)	CGFloat 		minimumZoomScale;


#pragma mark -
#pragma mark Methods

- (void)stopScene;


@end
