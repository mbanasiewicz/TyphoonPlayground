//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "AObjectAssembly.h"
#import "AObject.h"


@implementation AObjectAssembly {

}
- (AObject *)aObject {
    return [TyphoonDefinition withClass:[AObject class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(createdBy) with:@"AObjectAssembly"];
                          }];
}

@end