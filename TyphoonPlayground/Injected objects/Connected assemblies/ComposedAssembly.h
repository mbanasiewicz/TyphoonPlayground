//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/TyphoonAssembly.h>

@protocol AObjectAssemblyProtocol;
@protocol BObjectAssemblyProtocol;
@protocol CObjectAssemblyProtocol;
@class ComposedObject;
@class AObjectAssembly;


@interface ComposedAssembly : TyphoonAssembly
// This wont work
// @See https://github.com/appsquickly/Typhoon/wiki/Modularizing-Assemblies
// @property(nonatomic, strong, readonly) id<AObjectAssemblyProtocol> *aObjectAssembly;
// This would work
//@property(nonatomic, strong, readonly) AObjectAssembly *aObjectAssembly;
@property(nonatomic, strong, readonly) TyphoonAssembly<AObjectAssemblyProtocol> *aObjectAssembly;
@property(nonatomic, strong, readonly) TyphoonAssembly<BObjectAssemblyProtocol> *bObjectAssembly;
@property(nonatomic, strong, readonly) TyphoonAssembly<CObjectAssemblyProtocol> *cObjectAssembly;

- (ComposedObject *)composedObject;
@end