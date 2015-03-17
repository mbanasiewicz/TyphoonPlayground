//
//  AppDelegate.m
//  TyphoonPlayground
//
//  Created by Maciej Banasiewicz on 17/03/15.
//  Copyright (c) 2015 MB. All rights reserved.
//


#import <Typhoon/TyphoonAssembly.h>
#import "AppDelegate.h"
#import "ApplicationAssembly.h"
#import "InjectedObject.h"
#import <TyphoonComponentFactory.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)setWindow:(UIWindow *)window {
    _window = window;
}

- (void)setObject:(InjectedObject *)object {
    _object = object;
    NSLog(@"object = %@", object);
}

// #1
- (void)setAssembly:(ApplicationAssembly *)assembly {
    _assembly = assembly;
    NSLog(@"assembly = %@", assembly);
}
// #2
//- (void)setAssembly:(TyphoonComponentFactory *)assembly {
//    _assembly = assembly;
//    NSLog(@"assembly = %@", assembly);
//}
// #3
//- (void)typhoonSetFactory:(id)theFactory
//{
//    //_factory is can be of type TyphoonComponentFactory . . .
//    //. . .  or any of your TyphoonAssembly sub-classes.
//    _theFactory = theFactory;
//}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"self.window = %@", self.window);
    NSLog(@"self.window.rootViewController = %@", self.window.rootViewController);
//    [self.assembly makeDefault];
    NSLog(@"[TyphoonAssembly defaultAssembly] = %@", [TyphoonAssembly defaultAssembly]);
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end