//
//  SUICommand.m
//  SUICategoriesDemo
//
//  Created by RandomSuio on 16/1/19.
//  Copyright © 2016年 suio~. All rights reserved.
//

#import "SUICommand.h"

@implementation SUICommand


+ (RACCommand *)command:(void (^)(void))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithSignalBlock:^RACSignal *(id input) {
                                  cb();
                                  return [RACSignal empty];
                              }];
    return curCommand;
}

+ (RACCommand *)commandWithSignalBlock:(RACSignal * (^)(void))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithSignalBlock:^RACSignal *(id input) {
                                  RACSignal *curSignal = cb();
                                  if (curSignal) {
                                      return curSignal;
                                  } else {
                                      return [RACSignal empty];
                                  }
                              }];
    return curCommand;
}

+ (RACCommand *)commandEnabled:(RACSignal *)enabledSignal block:(void (^)(void))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithEnabled:enabledSignal
                              signalBlock:^RACSignal *(id input) {
                                  cb();
                                  return [RACSignal empty];
                              }];
    return curCommand;
}

+ (RACCommand *)commandEnabled:(RACSignal *)enabledSignal signalBlock:(RACSignal * (^)(void))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithEnabled:enabledSignal
                              signalBlock:^RACSignal *(id input) {
                                  RACSignal *curSignal = cb();
                                  if (curSignal) {
                                      return curSignal;
                                  } else {
                                      return [RACSignal empty];
                                  }
                              }];
    return curCommand;
}


+ (RACCommand *)inputCommand:(void (^)(id input))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithSignalBlock:^RACSignal *(id input) {
                                  cb(input);
                                  return [RACSignal empty];
                              }];
    return curCommand;
}

+ (RACCommand *)inputCommandWithSignalBlock:(RACSignal * (^)(id input))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithSignalBlock:^RACSignal *(id input) {
                                  RACSignal *curSignal = cb(input);
                                  if (curSignal) {
                                      return curSignal;
                                  } else {
                                      return [RACSignal empty];
                                  }
                              }];
    return curCommand;
}

+ (RACCommand *)inputCommandEnabled:(RACSignal *)enabledSignal block:(void (^)(id input))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithEnabled:enabledSignal
                              signalBlock:^RACSignal *(id input) {
                                  cb(input);
                                  return [RACSignal empty];
                              }];
    return curCommand;
}

+ (RACCommand *)inputCommandEnabled:(RACSignal *)enabledSignal signalBlock:(RACSignal * (^)(id input))cb
{
    RACCommand *curCommand = [[RACCommand alloc]
                              initWithEnabled:enabledSignal
                              signalBlock:^RACSignal *(id input) {
                                  RACSignal *curSignal = cb(input);
                                  if (curSignal) {
                                      return curSignal;
                                  } else {
                                      return [RACSignal empty];
                                  }
                              }];
    return curCommand;
}


@end
