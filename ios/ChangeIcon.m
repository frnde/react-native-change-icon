#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ChangeIcon, NSObject)

RCT_EXTERN_METHOD(changeIcon:(NSString *)iconName withResolver:(RCTPromiseResolveBlock)resolve withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(currentIcon:(RCTPromiseResolveBlock)resolve withRejecter:(RCTPromiseRejectBlock)reject)

@end
