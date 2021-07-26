#import "KimicrewFlutterpackagePlugin.h"
#if __has_include(<kimicrew_flutterpackage/kimicrew_flutterpackage-Swift.h>)
#import <kimicrew_flutterpackage/kimicrew_flutterpackage-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kimicrew_flutterpackage-Swift.h"
#endif

@implementation KimicrewFlutterpackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKimicrewFlutterpackagePlugin registerWithRegistrar:registrar];
}
@end
