PIOSpriteKit
============

PIOSpriteKit is a utility library for Apple's SpriteKit. It's goal is to eliminate some boilerplate code and add some usefull components.



Adding to your project
----------------

Simply add the files in the [PIOSpriteKit/Classes](https://github.com/pzbyszynski/PIOSpriteKit/tree/master/PIOSpriteKit/Classes) to your project. You will also need to link your project with SpriteKit.framework.


If you use CocoaPods, just include following line in your Pod file:

```
pod 'PIOSpriteKit'
```

What's included
----------------
- [PIOScrollSceneViewController](#PIOScrollSceneViewController)
- [PIOTiledNode](#PIOTiledNode)


<a name="PIOScrollSceneViewController"></a>
PIOScrollSceneViewController
----------------------------
PIOScrollSceneViewController lets you scroll and zoom your scene. It consists of two main classess: `PIOScrollScene` and `PIOScrollSceneViewController`. The setup is really simple:

**First of all setup your scene**

1. Make sure your scene inherits from `PIOScrollViewScene`

	```objective-c
	@interface ExampleScrollScene : PIOScrollScene
	```


2. Initialize `rootNode` property of your scene with a `SKSpriteNode` you wish to pan and zoom. `[PIOScrollScene rootNode]` is the main node of the scene.

	```objective-c
	- (instancetype)initWithSize:(CGSize)size {

		if([super initWithSize:size] != nil) {

			self.rootNode.texture = [SKTexture textureWithImageNamed:@"sample_image.jpg"];
			self.rootNode.size    = self.rootNode.texture.size;
		}

		return self;
	}
	```

3. Override `PIOScrollScene` properties that let's you specify minimum maximum and initial zoom zcale (1 is a default value)

	```objective-c
	- (CGFloat)minimumZoomScale {

		return 0.5;
	}

	- (CGFloat)maximumZoomScale {

		return 1.0;
	}

	- (CGFloat)initialZoomScale {

		return 0.5;
	}
	```

**Setup your view controller**

1. Make sure your view controller inherits from `PIOScrollSceneViewController`
    ```objective-c
    @interface ExampleScrollViewController : PIOScrollSceneViewController
    ```


2. Present your scene using `presentScene` method.

	```objective-c
	- (void)viewWillLayoutSubviews {

		[super viewWillLayoutSubviews];

		if (self.sampleScene == nil) {

			//[PIOScrollSceneViewController spriteKitView] is an IBOutlet so you can hook it up to your SKView in the storyboard)
			self.sampleScene	= [[ExampleScrollScene alloc] initWithSize:self.spriteKitView.frame.size];

			[self presentScene:self.sampleScene];
		}
	}
	```


<a name="PIOTiledNode"></a>
PIOTiledNode
----------------------------
PIOTiledNode lets you create node that consists of several tiles.

**Setup your tile node**

1. Make sure your node inherits from `PIOTiledNode`

	```objective-c
	@interface ExampleTiledNode : PIOTiledNode
	```

2. Override `PIOTiledNode` properties that let's you specify number of rows the node consists of

	```objective-c
	- (uint)rowsCount {

		return 1;
	}

	- (uint)columnsCount {

		return 2;
	}
	```

3. Override `imageFileNameForRow:column` method, that returns tile file name for given row and column

	```objective-c
	- (NSString *)imageFileNameForRow:(NSUInteger)row column:(NSUInteger)column {

		return [NSString stringWithFormat:@"sample_image_%lu%lu.jpg", (unsigned long) row, (unsigned long) column];
	}
	```

**Use your tiled node**

1. Call `[PIOTiledNode load]` method to load your tile node

	```objective-c
	SKSpriteNode *sampleNode;
	sampleNode	= [[[ExampleTiledNode alloc] init] load];
	```

2. Use it as any other node



You can find the working example app in [Examples](https://github.com/pzbyszynski/PIOSpriteKit/tree/master/PIOSpriteKit.Examples) folder. Enjoy!

<a name="License"></a>
License
--------
**PIOSpriteKit** is under [MIT License](http://https://github.com/pzbyszynski/PIOSpriteKit/LICENSE)



Contact
---------------
[@styko](http://twitter.com/styko)
