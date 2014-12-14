//
//  DolarTest.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Dolar.h"

@interface DolarTest : XCTestCase

@end

@implementation DolarTest

-(void)testMultiplication
{
    Dolar *ten = [[Dolar alloc] initWithAmount:10];
    Dolar *five = [[Dolar alloc] initWithAmount:5];

    XCTAssertEqualObjects(ten, [five time:2], @"5 * 2 should be 10");
}

-(void)testEquality
{
    Dolar *fourDolars = [[Dolar alloc] initWithAmount:4];
    Dolar *fourDolarsCalculated = [fourDolars time:2];
    Dolar *fiveDolars = [[Dolar alloc] initWithAmount:5];

    XCTAssertEqualObjects(fourDolars, fourDolarsCalculated, @"Equivalent objects should be equal");
    XCTAssertFalse([fourDolars isEqual:fiveDolars], @"Non equivalent objects should not be equal");
}















@end
