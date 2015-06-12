//
//  ReceiptColumnExpensable.m
//  SmartReceipts
//
//  Created by Jaanus Siim on 24/04/15.
//  Copyright (c) 2015 Will Baumann. All rights reserved.
//

#import <objc/NSObjCRuntime.h>
#import <objc/objc.h>
#import "ReceiptColumnExpensable.h"
#import "WBReceipt.h"
#import "WBTrip.h"

@implementation ReceiptColumnExpensable

- (NSString *)valueFromReceipt:(WBReceipt *)receipt forCSV:(BOOL)forCSV {
    return [receipt isExpensable] ? NSLocalizedString(@"receipt.column.expenseable.value.yes", nil) : NSLocalizedString(@"receipt.column.expenseable.value.no", nil);
}

@end
