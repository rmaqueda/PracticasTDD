//
//  Euro.h
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Euro : Money

-(instancetype)initWithAmount:(NSInteger)amount;

-(instancetype)time:(NSInteger)multiplication;

@end
