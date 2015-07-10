#import <Cordova/CDV.h>
#import "AdMoGoInterstitialManager.h"

@interface LNAdsMogo : CDVPlugin<AdMoGoInterstitialDelegate> {
	NSString *loadedCB;
	NSString *closedCB;
}

- (void) showInterstitial:(CDVInvokedUrlCommand*)command;

- (void) cancelShow:(CDVInvokedUrlCommand*)command;

- (void) interstitialLoaded:(CDVInvokedUrlCommand*)command;

- (void) interstitialClosed:(CDVInvokedUrlCommand*)command;

@end