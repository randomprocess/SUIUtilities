//
//  SUICommand.h
//  SUICategoriesDemo
//
//  Created by RandomSuio on 16/1/19.
//  Copyright © 2016年 suio~. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"

NS_ASSUME_NONNULL_BEGIN

@interface SUICommand : NSObject


+ (RACCommand *)command:(void (^)(void))cb;

+ (RACCommand *)commandWithSignalBlock:(nullable RACSignal * (^)(void))cb;

+ (RACCommand *)commandEnabled:(nullable RACSignal *)enabledSignal block:(void (^)(void))cb;

+ (RACCommand *)commandEnabled:(nullable RACSignal *)enabledSignal signalBlock:(nullable RACSignal * (^)(void))cb;


+ (RACCommand *)inputCommand:(void (^)(id input))cb;

+ (RACCommand *)inputCommandWithSignalBlock:(nullable RACSignal * (^)(id input))cb;

+ (RACCommand *)inputCommandEnabled:(nullable RACSignal *)enabledSignal block:(void (^)(id input))cb;

+ (RACCommand *)inputCommandEnabled:(nullable RACSignal *)enabledSignal signalBlock:(nullable RACSignal * (^)(id input))cb;


@end

NS_ASSUME_NONNULL_END
