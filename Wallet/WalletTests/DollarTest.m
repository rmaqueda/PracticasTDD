//
//  DolarTest.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Dollar.h"
#import "Money.h"

@interface DollarTest : XCTestCase

@end

@implementation DollarTest

-(void)testMultiplication
{
    Dollar *ten = [Money dollarWithAmount:10];
    Dollar *five = [Money dollarWithAmount:5];

    XCTAssertEqualObjects(ten, [five time:2], @"5 * 2 should be 10");
}

-(void)testEquality
{
    Dollar *fourDollars = [Money dollarWithAmount:4];
    Dollar *fourDollarsCalculated = [fourDollars time:2];
    Dollar *fiveDollars = [Money dollarWithAmount:5];

    XCTAssertEqualObjects(fourDollars, fourDollarsCalculated, @"Equivalent objects should be equal");
    XCTAssertFalse([fourDollars isEqual:fiveDollars], @"Non equivalent objects should not be equal");
}


-(void)testHash
{
    Dollar *oneDollar1 = [Money dollarWithAmount:1];
    Dollar *oneDollar2 = [Money dollarWithAmount:1];

    XCTAssertEqual([oneDollar1 hash], [oneDollar2 hash], @"Equal objects must have same hash");
}













@end
