//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_bluetooth_serial/FlutterBluetoothSerialPlugin.h>)
#import <flutter_bluetooth_serial/FlutterBluetoothSerialPlugin.h>
#else
@import flutter_bluetooth_serial;
#endif

#if __has_include(<geolocator/GeolocatorPlugin.h>)
#import <geolocator/GeolocatorPlugin.h>
#else
@import geolocator;
#endif

#if __has_include(<google_api_availability/GoogleApiAvailabilityPlugin.h>)
#import <google_api_availability/GoogleApiAvailabilityPlugin.h>
#else
@import google_api_availability;
#endif

#if __has_include(<location_permissions/LocationPermissionsPlugin.h>)
#import <location_permissions/LocationPermissionsPlugin.h>
#else
@import location_permissions;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterBluetoothSerialPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBluetoothSerialPlugin"]];
  [GeolocatorPlugin registerWithRegistrar:[registry registrarForPlugin:@"GeolocatorPlugin"]];
  [GoogleApiAvailabilityPlugin registerWithRegistrar:[registry registrarForPlugin:@"GoogleApiAvailabilityPlugin"]];
  [LocationPermissionsPlugin registerWithRegistrar:[registry registrarForPlugin:@"LocationPermissionsPlugin"]];
}

@end
