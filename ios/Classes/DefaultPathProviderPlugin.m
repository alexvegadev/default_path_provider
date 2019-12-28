#import "DefaultPathProviderPlugin.h"
#if __has_include(<default_path_provider/default_path_provider-Swift.h>)
#import <default_path_provider/default_path_provider-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "default_path_provider-Swift.h"
#endif

@implementation DefaultPathProviderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDefaultPathProviderPlugin registerWithRegistrar:registrar];
}
@end
