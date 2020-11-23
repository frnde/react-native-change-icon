#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ChangeIcon, NSObject)

RCT_EXTERN_METHOD(changeIcon:(NSString *)iconName disableIcon:(NSString *)disableIconName withResolver:(RCTPromiseResolveBlock)resolve withRejecter:(RCTPromiseRejectBlock)reject)

@end
