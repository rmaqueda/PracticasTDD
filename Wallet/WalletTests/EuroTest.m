//
//  EuroTest.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Euro.h"

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

-(void)testMultiplication
{
    Euro *ten = [[Euro alloc] initWithAmount:10];
    Euro *five = [[Euro alloc] initWithAmount:5];

    XCTAssertEqualObjects(ten, [five time:2], @"5 * 2 should be 10");
}

-(void)testEquality
{
    Euro *fourEuros = [[Euro alloc] initWithAmount:4];
    Euro *fourEurosCalculated = [fourEuros time:2];
    
    XCTAssertEqualObjects(fourEuros, fourEurosCalculated, @"Equivalent objects should be equal");
}

@end
