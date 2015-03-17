//
//  AppDelegate.h
//  TyphoonPlayground
//
//  Created by Maciej Banasiewicz on 17/03/15.
//  Copyright (c) 2015 MB. All rights reserved.
//


#import <UIKit/UIKit.h>

@class InjectedObject;
@class ApplicationAssembly;
@class TyphoonComponentFactory;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, strong) InjectedObject *object;

// The property or method parameter can be of type TyphoonComponentFactory
// The property can be any one of your TyphoonAssembly sub-classes (or if you wish, a protocol that represents these).
// #1
@property(nonatomic, strong) ApplicationAssembly *assembly;
// #2
//@property(nonatomic, strong) TyphoonComponentFactory *assembly;
// #3
//@property(nonatomic, strong) id theFactory;
@end
