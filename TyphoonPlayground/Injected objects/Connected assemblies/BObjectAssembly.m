//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "BObjectAssembly.h"
#import "BObject.h"


@implementation BObjectAssembly {

}

- (BObject *)bObject {
    return [TyphoonDefinition withClass:[BObject class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(createdBy) with:@"BObjectAsembly"];
                          }];
}
@end