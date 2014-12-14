//
//  MoneyTest.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Money.h"

@interface MoneyTest : XCTestCase

@end

@implementation MoneyTest

-(void)testThatTimeReisesException
{
    Money *money = [[Money alloc] initWithAmount:2];

    XCTAssertThrows([money time:2], @"Should raise an exception");
}

@end
