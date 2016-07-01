#import <HanggeSwiftPlugin.h>
@implementation HanggeSwiftPlugin



-(void)verifyPassword:(CDVInvokedUrlCommand *)command{
    CDVPluginResult *pluginResult;
    NSString *password = command.arguments[0];
    if (password == nil) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"口令不能为空"];
    } else if([password isEqualToString:@"cyc"]){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
