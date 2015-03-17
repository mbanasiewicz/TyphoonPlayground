//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "AObjectAssemblyStub.h"
#import "AObject.h"


@implementation AObjectAssemblyStub {

}
- (AObject *)aObject {
    return [TyphoonDefinition withClass:[AObject class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(createdBy) with:@"AObjectAssemblyStub"];
                          }];
}

@end