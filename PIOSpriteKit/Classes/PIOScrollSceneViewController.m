//
//  Created by Piotr Zbyszyński on 2013-05-15.
// Copyright (c) 2014 Piotr Zbyszyński. All rights reserved.
//


@import SpriteKit;

#import "PIOScrollSceneViewController.h"
#import "PIOScrollScene.h"



@interface PIOScrollSceneViewController ()


#pragma mark -
#pragma mark Properties

@property (nonatomic, strong)	UIView 	*scrollContentView;


@end



@implementation PIOScrollSceneViewController

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {


	[super viewDidLoad];
}

- (void)viewWillLayoutSubviews {

	self.spriteKitView								= (SKView *) self.view;
	NSAssert(self.spriteKitView != nil, @"Property spriteKitView not set");


	if (self.scrollView == nil) {


		self.scrollView									= [[UIScrollView alloc] initWithFrame:self.spriteKitView.frame];
		self.scrollView.showsHorizontalScrollIndicator	= NO;
		self.scrollView.showsVerticalScrollIndicator	= NO;
		self.scrollContentView							= [[UIView alloc] init];
		self.scrollView.delegate						= self;


		[self.scrollView addSubview:self.scrollContentView];
		[self.view addSubview:self.scrollView];
	}
}

- (void)viewDidLayoutSubviews {

	self.scrollView.zoomScale	= self.currentScene.initialZoomScale;
	[self scrollViewDidZoom:self.scrollView];
}


#pragma mark -
#pragma mark Properties

- (PIOScrollScene *)currentScene {

	return (PIOScrollScene *) self.spriteKitView.scene;
}


#pragma mark -
#pragma mark UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

	int 	bottomScrollViewInSKCoordinates		= (int) (scrollView.contentOffset.y + self.spriteKitView.bounds.size.height);
	CGFloat rootNodeY 							= -(self.scrollView.contentSize.height - bottomScrollViewInSKCoordinates);

	self.currentScene.rootNode.position			= CGPointMake(-scrollView.contentOffset.x, rootNodeY);
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {

	[self.currentScene.rootNode setScale:scrollView.zoomScale];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {

	return self.scrollContentView;
}


#pragma mark -
#pragma mark Methods

- (void)presentScene:(PIOScrollScene *)scrollScene {

	if (self.currentScene != nil) {

		[self.currentScene stopScene];
	}

	[self.spriteKitView presentScene:scrollScene];
	[self adjustScrollViewForScene:scrollScene];
}


#pragma mark -
#pragma mark Private Methods


- (void)adjustScrollViewForScene:(PIOScrollScene *)scene {

	self.scrollView.maximumZoomScale	= scene.maximumZoomScale;
	self.scrollView.minimumZoomScale	= scene.minimumZoomScale;
	self.scrollView.zoomScale			= scene.scale;
	
	
	self.scrollContentView.frame		= scene.rootNode.frame;
	self.scrollView.contentSize			= self.scrollContentView.frame.size;


	self.scrollView.contentOffset		= CGPointMake(0, self.scrollView.contentSize.height - self.spriteKitView.bounds.size.height);
}


@end
