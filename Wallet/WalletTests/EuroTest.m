//
//  EuroTest.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

 -(void)testMultiplication
{
    Euro *five = [[Euro alloc] iniWithAmount:5];
    [five time:2];

    XCTAssertEqual(10, five.amount, @"Both amount should be equal");
}

@end
