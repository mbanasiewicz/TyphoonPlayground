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
                          }];
}
@end