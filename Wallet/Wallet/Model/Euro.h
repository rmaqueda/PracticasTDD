//
//  Euro.h
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Euro : NSObject

@property (nonatomic, readonly) NSInteger amount;

-(instancetype)initWithAmount:(NSInteger)amount;

-(void)time:(NSInteger)multiplication;

@end
