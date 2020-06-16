#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(AlertMessage, NSObject)
RCT_EXTERN_METHOD(ShowMessage: (NSString *)message duration: (double *)duration)
@end

