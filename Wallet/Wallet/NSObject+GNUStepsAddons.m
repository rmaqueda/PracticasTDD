//
//  NSObject+GNUStepsAddons.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "NSObject+GNUStepsAddons.h"
#import <objc/runtime.h>

@implementation NSObject (GNUStepsAddons)

-(id)subclassResponsibility:(SEL)aSel
{

    char prefix = class_isMetaClass(object_getClass(self)) ? '+' :'-';

    [NSException raise:NSInvalidArgumentException format:@"%@ %c %@ should be overriden by its subclass", NSStringFromClass([self class]), prefix, NSStringFromSelector(aSel)];

    return self;
}

@end
