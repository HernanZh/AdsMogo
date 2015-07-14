#import "LNAdsMogo.h"


@implementation LNAdsMogo

- (void)pluginInitialize
{
    NSLog(@"plugin initialize");
    AdMoGoInterstitial *interstitialIns = [[AdMoGoInterstitialManager shareInstance] adMogoInterstitialByAppKey:@"9131689ff6894bf4bfa63003f35f4c3b"];
    interstitialIns.delegate = self;
}

- (void) showInterstitial:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
        NSLog(@"show Interstitial");
        AdMoGoInterstitial *ins = [[AdMoGoInterstitialManager shareInstance] adMogoInterstitialByAppKey:@"9131689ff6894bf4bfa63003f35f4c3b"];
        [ins interstitialShow:YES];
    }];
}

- (void) cancelShow:(CDVInvokedUrlCommand*)command
{
    NSLog(@"cancelShow");
    [self.commandDelegate runInBackground:^{
        AdMoGoInterstitial *ins = [[AdMoGoInterstitialManager shareInstance] adMogoInterstitialByAppKey:@"9131689ff6894bf4bfa63003f35f4c3b"];
        [ins interstitialCancel];
    }];
}

- (void) interstitialLoaded:(CDVInvokedUrlCommand*)command
{
    loadedCB = [command callbackId];
}

- (void) interstitialClosed:(CDVInvokedUrlCommand*)command
{
    closedCB = [command callbackId];
}

- (void)adsMoGoInterstitialAdWillPresent {
    NSLog(@"present");
    [self.commandDelegate runInBackground:^{
        CDVPluginResult* result = [CDVPluginResult
                                   resultWithStatus:CDVCommandStatus_OK];
        
        [self.commandDelegate sendPluginResult:result callbackId:loadedCB];
    }];
}


- (void)adsMoGoInterstitialAdDidDismiss {
    NSLog(@"dismiss");
    [self.commandDelegate runInBackground:^{
        CDVPluginResult* result = [CDVPluginResult
                                   resultWithStatus:CDVCommandStatus_OK];
        
        [self.commandDelegate sendPluginResult:result callbackId:closedCB];
    }];
}

- (UIViewController *)viewControllerForPresentingInterstitialModalView{
    return self.viewController;
}

- (BOOL)adsMogoInterstitialAdDidExpireAd{
    return NO;
}

- (void)adMoGoInterstitialInitFinish
{
    
}

/*
 手动轮换下，广告轮空回调
 */
- (void)adMoGoInterstitialInMaualfreshAllAdsFail
{
    
}
@end
