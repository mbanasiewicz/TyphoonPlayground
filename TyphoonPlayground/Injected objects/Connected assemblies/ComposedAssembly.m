//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "ComposedAssembly.h"
#import "AObjectAssemblyProtocol.h"
#import "BObjectAssemblyProtocol.h"
#import "CObjectAssemblyProtocol.h"
#import "ComposedObject.h"
#import "AObjectAssembly.h"


@implementation ComposedAssembly {

}

- (ComposedObject *)composedObject {
    return [TyphoonDefinition withClass:[ComposedObject class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(initWithAObject:bObject:cObject:)
                                              parameters:^(TyphoonMethod *initializer) {
                                                  [initializer injectParameterWith:self.aObjectAssembly.aObject];
                                                  [initializer injectParameterWith:self.bObjectAssembly.bObject];
                                                  [initializer injectParameterWith:self.cObjectAssembly.cObject];
                                              }];
                              // https://github.com/appsquickly/Typhoon/wiki/Scopes
                              // This scope means that when a TyphoonDefinition is assembled,
                              // any dependencies will be treated as shared instances during assembly.
                              // Once resolution is complete they are not retained by Typhoon.
                              // TyphoonScopeObjectGraph

                              // Indicates that a new instance should always be created by Typhoon,
                              // whenever specified as a dependency to another definition.
                              // TyphoonScopePrototype

                              // Indicates that Typhoon should retain the instance effectively creating a singleton,
                              // at least as long as the TyphoonComponentFactory that holds it remains.
                              // TyphoonScopeSingleton
                              //
                              // composedObject 1 and composedObject 2 will be this same
                              // definition.scope = TyphoonScopeSingleton;


                              // This scope behaves the same as TyphoonScopeSingleton, but the object is not created unless or until it is needed.
                              // TyphoonScopeLazySingleton

                              // TyphoonScopeWeakSingleton
                              // Indicates that a shared instance should be created as long as necessary.
                              // When your application's classes stop referencing this component it will be deallocated until needed again.
                          }];
}
@end