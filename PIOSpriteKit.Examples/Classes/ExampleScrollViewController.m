//
// Created by Piotr Zbyszyński on 2014-04-13.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//


#import "ExampleScrollViewController.h"
#import "ExampleScrollScene.h"



@interface ExampleScrollViewController()

#pragma mark -
#pragma mark Private properties

@property (nonatomic, strong)	ExampleScrollScene *sampleScene;

@end



@implementation ExampleScrollViewController

#pragma mark -
#pragma mark Life cycle

- (void)viewDidLoad {

	self.spriteKitView.showsNodeCount	= YES;
	self.spriteKitView.showsFPS			= YES;
}

- (void)viewWillLayoutSubviews {


	[super viewWillLayoutSubviews];


	if (self.sampleScene == nil) {

		self.sampleScene	= [[ExampleScrollScene alloc] initWithSize:self.spriteKitView.frame.size tiledBackground:YES];

		[self presentScene:self.sampleScene];
	}
}


@end
