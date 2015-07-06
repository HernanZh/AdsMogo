#import <Cordova/CDV.h>

@interface LNAdsMogo : CDVPlugin

- (void) showInterstitial:(CDVInvokedUrlCommand*)command;

- (void) cancelShow:(CDVInvokedUrlCommand*)command;

@end