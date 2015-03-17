//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "CObjectAssembly.h"
#import "CObject.h"

@implementation CObjectAssembly {

}

- (CObject *)cObject {
    return [TyphoonDefinition withClass:[CObject class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(createdBy) with:@"CObjectAsembly"];
                          }];
}
@end