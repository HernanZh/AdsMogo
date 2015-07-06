#import "LNAdsMogo.h"
#import "AdMoGoInterstitialManager.h"


@implementation LNAdsMogo

- (void)pluginInitialize
{
    NSLog(@"plugin initialize");
    [AdMoGoInterstitialManager setAppKey:@"e0b8fd945682481cb0c52479b08bcafe"];
    [[AdMoGoInterstitialManager shareInstance] initDefaultInterstitial];
}

- (void) showInterstitial:(CDVInvokedUrlCommand*)command
{
    NSLog(@"showInterstitial");
    [self.commandDelegate runInBackground:^{
        [[AdMoGoInterstitialManager shareInstance] interstitialShow:YES];
    }];
}

- (void) cancelShow:(CDVInvokedUrlCommand*)command
{
    NSLog(@"cancelShow");
    [self.commandDelegate runInBackground:^{
        [[AdMoGoInterstitialManager shareInstance] interstitialCancel];
    }];
}


@end