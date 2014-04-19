//
//  Created by Piotr Zbyszyński on 2013-05-15.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//

@import UIKit;
@import SpriteKit;


@class PIOScrollScene;


@interface PIOScrollSceneViewController : UIViewController <UIScrollViewDelegate>

#pragma mark -
#pragma mark IBOutlets

@property (nonatomic, strong) IBOutlet SKView 	*spriteKitView;


#pragma mark -
#pragma mark Properties

@property (nonatomic, strong)   UIScrollView 	*scrollView;
@property (nonatomic, readonly)	PIOScrollScene 	*currentScene;


#pragma mark -
#pragma mark Methods

- (void)presentScene:(PIOScrollScene *)scrollScene;


@end
