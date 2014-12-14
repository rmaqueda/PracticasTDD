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
#import "Money.h"

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

-(void)testMultiplication
{
    Euro *ten = [Money euroWithAmount:10];
    Euro *five = [Money euroWithAmount:5];

    XCTAssertEqualObjects(ten, [five time:2], @"5 * 2 should be 10");
}

-(void)testEquality
{
    Euro *fourEuros = [Money euroWithAmount:4];
    Euro *fourEurosCalculated = [fourEuros time:2];
    
    XCTAssertEqualObjects(fourEuros, fourEurosCalculated, @"Equivalent objects should be equal");
}

-(void)testHash
{
    Euro *oneEuro1 = [Money euroWithAmount:1];
    Euro *oneEuro2 = [Money euroWithAmount:1];

    XCTAssertEqual([oneEuro1 hash], [oneEuro2 hash], @"Equal objects must have same hash");
}

@end
