
#include "J2ObjC_source.h"
#include "LeDefinedUUIDs.h"
#include "java/util/UUID.h"

@implementation LeDefinedUUIDs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LLeDefinedUUIDs_Service;LLeDefinedUUIDs_Characteristic;LLeDefinedUUIDs_Descriptor;" };
  static const J2ObjcClassInfo _LeDefinedUUIDs = { "LeDefinedUUIDs", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, 0, -1, -1, -1 };
  return &_LeDefinedUUIDs;
}

@end

void LeDefinedUUIDs_init(LeDefinedUUIDs *self) {
  NSObject_init(self);
}

LeDefinedUUIDs *new_LeDefinedUUIDs_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs, init)
}

LeDefinedUUIDs *create_LeDefinedUUIDs_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Service)

JavaUtilUUID *LeDefinedUUIDs_Service_HEART_RATE;
JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_POWER;
JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE;
JavaUtilUUID *LeDefinedUUIDs_Service_RUNNING_SPEED_AND_CADENCE;
JavaUtilUUID *LeDefinedUUIDs_Service_FITNESS_MACHINE;
JavaUtilUUID *LeDefinedUUIDs_Service_BATTERY;
JavaUtilUUID *LeDefinedUUIDs_Service_DEVICE_INFORMATION;
JavaUtilUUID *LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE;

@implementation LeDefinedUUIDs_Service

+ (JavaUtilUUID *)HEART_RATE {
  return LeDefinedUUIDs_Service_HEART_RATE;
}

+ (JavaUtilUUID *)CYCLING_POWER {
  return LeDefinedUUIDs_Service_CYCLING_POWER;
}

+ (JavaUtilUUID *)CYCLING_SPEED_AND_CADENCE {
  return LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE;
}

+ (JavaUtilUUID *)RUNNING_SPEED_AND_CADENCE {
  return LeDefinedUUIDs_Service_RUNNING_SPEED_AND_CADENCE;
}

+ (JavaUtilUUID *)FITNESS_MACHINE {
  return LeDefinedUUIDs_Service_FITNESS_MACHINE;
}

+ (JavaUtilUUID *)BATTERY {
  return LeDefinedUUIDs_Service_BATTERY;
}

+ (JavaUtilUUID *)DEVICE_INFORMATION {
  return LeDefinedUUIDs_Service_DEVICE_INFORMATION;
}

+ (JavaUtilUUID *)GENERIC_ATTRIBUTE {
  return LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Service_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HEART_RATE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "CYCLING_POWER", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
    { "CYCLING_SPEED_AND_CADENCE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "RUNNING_SPEED_AND_CADENCE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "FITNESS_MACHINE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "BATTERY", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "DEVICE_INFORMATION", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "GENERIC_ATTRIBUTE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { &LeDefinedUUIDs_Service_HEART_RATE, &LeDefinedUUIDs_Service_CYCLING_POWER, &LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE, &LeDefinedUUIDs_Service_RUNNING_SPEED_AND_CADENCE, &LeDefinedUUIDs_Service_FITNESS_MACHINE, &LeDefinedUUIDs_Service_BATTERY, &LeDefinedUUIDs_Service_DEVICE_INFORMATION, &LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE, "LLeDefinedUUIDs;" };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Service = { "Service", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x9, 1, 8, 8, -1, -1, -1, -1 };
  return &_LeDefinedUUIDs_Service;
}

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Service class]) {
    JreStrongAssign(&LeDefinedUUIDs_Service_HEART_RATE, JavaUtilUUID_fromStringWithNSString_(@"0000180d-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_CYCLING_POWER, JavaUtilUUID_fromStringWithNSString_(@"00001818-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE, JavaUtilUUID_fromStringWithNSString_(@"00001816-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_RUNNING_SPEED_AND_CADENCE, JavaUtilUUID_fromStringWithNSString_(@"00001814-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_FITNESS_MACHINE, JavaUtilUUID_fromStringWithNSString_(@"00001826-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_BATTERY, JavaUtilUUID_fromStringWithNSString_(@"0000180f-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_DEVICE_INFORMATION, JavaUtilUUID_fromStringWithNSString_(@"0000180a-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE, JavaUtilUUID_fromStringWithNSString_(@"00001801-0000-1000-8000-00805f9b34fb"));
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Service)
  }
}

@end

void LeDefinedUUIDs_Service_init(LeDefinedUUIDs_Service *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Service *new_LeDefinedUUIDs_Service_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Service, init)
}

LeDefinedUUIDs_Service *create_LeDefinedUUIDs_Service_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Service, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Service)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Characteristic)

JavaUtilUUID *LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_APPEARANCE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_BATTERY_LEVEL;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERVICE_CHANGED;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_FEATURE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_INDOOR_BIKE_DATA;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_TRAINING_STATUS;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_SPEED_RANGE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_INCLINATION_RANGE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_RESISTANCE_LEVEL_RANGE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_HEART_RATE_RANGE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SUPPORTED_POWER_RANGE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_CONTROL_POINT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_STATUS;

@implementation LeDefinedUUIDs_Characteristic

+ (JavaUtilUUID *)HEART_RATE_MEASUREMENT {
  return LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT;
}

+ (JavaUtilUUID *)MANUFACTURER_STRING {
  return LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING;
}

+ (JavaUtilUUID *)MODEL_NUMBER_STRING {
  return LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING;
}

+ (JavaUtilUUID *)SERIAL_NUMBER_STRING {
  return LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING;
}

+ (JavaUtilUUID *)FIRMWARE_REVISION_STRING {
  return LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING;
}

+ (JavaUtilUUID *)HARDWARE_REVISION_STRING {
  return LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING;
}

+ (JavaUtilUUID *)APPEARANCE {
  return LeDefinedUUIDs_Characteristic_APPEARANCE;
}

+ (JavaUtilUUID *)BODY_SENSOR_LOCATION {
  return LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION;
}

+ (JavaUtilUUID *)BATTERY_LEVEL {
  return LeDefinedUUIDs_Characteristic_BATTERY_LEVEL;
}

+ (JavaUtilUUID *)CYCLING_POWER_MEASUREMENT {
  return LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT;
}

+ (JavaUtilUUID *)CYCLING_POWER_CONTROL_POINT {
  return LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT;
}

+ (JavaUtilUUID *)CSC_MEASUREMENT {
  return LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT;
}

+ (JavaUtilUUID *)SERVICE_CHANGED {
  return LeDefinedUUIDs_Characteristic_SERVICE_CHANGED;
}

+ (JavaUtilUUID *)FITNESS_MACHINE_FEATURE {
  return LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_FEATURE;
}

+ (JavaUtilUUID *)INDOOR_BIKE_DATA {
  return LeDefinedUUIDs_Characteristic_INDOOR_BIKE_DATA;
}

+ (JavaUtilUUID *)TRAINING_STATUS {
  return LeDefinedUUIDs_Characteristic_TRAINING_STATUS;
}

+ (JavaUtilUUID *)SUPPORTED_SPEED_RANGE {
  return LeDefinedUUIDs_Characteristic_SUPPORTED_SPEED_RANGE;
}

+ (JavaUtilUUID *)SUPPORTED_INCLINATION_RANGE {
  return LeDefinedUUIDs_Characteristic_SUPPORTED_INCLINATION_RANGE;
}

+ (JavaUtilUUID *)SUPPORTED_RESISTANCE_LEVEL_RANGE {
  return LeDefinedUUIDs_Characteristic_SUPPORTED_RESISTANCE_LEVEL_RANGE;
}

+ (JavaUtilUUID *)SUPPORTED_HEART_RATE_RANGE {
  return LeDefinedUUIDs_Characteristic_SUPPORTED_HEART_RATE_RANGE;
}

+ (JavaUtilUUID *)SUPPORTED_POWER_RANGE {
  return LeDefinedUUIDs_Characteristic_SUPPORTED_POWER_RANGE;
}

+ (JavaUtilUUID *)FITNESS_MACHINE_CONTROL_POINT {
  return LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_CONTROL_POINT;
}

+ (JavaUtilUUID *)FITNESS_MACHINE_STATUS {
  return LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_STATUS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Characteristic_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HEART_RATE_MEASUREMENT", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "MANUFACTURER_STRING", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
    { "MODEL_NUMBER_STRING", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "SERIAL_NUMBER_STRING", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "FIRMWARE_REVISION_STRING", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "HARDWARE_REVISION_STRING", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "APPEARANCE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "BODY_SENSOR_LOCATION", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "BATTERY_LEVEL", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "CYCLING_POWER_MEASUREMENT", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "CYCLING_POWER_CONTROL_POINT", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "CSC_MEASUREMENT", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "SERVICE_CHANGED", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "FITNESS_MACHINE_FEATURE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "INDOOR_BIKE_DATA", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "TRAINING_STATUS", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "SUPPORTED_SPEED_RANGE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "SUPPORTED_INCLINATION_RANGE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "SUPPORTED_RESISTANCE_LEVEL_RANGE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "SUPPORTED_HEART_RATE_RANGE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "SUPPORTED_POWER_RANGE", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "FITNESS_MACHINE_CONTROL_POINT", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "FITNESS_MACHINE_STATUS", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
  };
  static const void *ptrTable[] = { &LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT, &LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING, &LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING, &LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING, &LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING, &LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING, &LeDefinedUUIDs_Characteristic_APPEARANCE, &LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION, &LeDefinedUUIDs_Characteristic_BATTERY_LEVEL, &LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT, &LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT, &LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT, &LeDefinedUUIDs_Characteristic_SERVICE_CHANGED, &LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_FEATURE, &LeDefinedUUIDs_Characteristic_INDOOR_BIKE_DATA, &LeDefinedUUIDs_Characteristic_TRAINING_STATUS, &LeDefinedUUIDs_Characteristic_SUPPORTED_SPEED_RANGE, &LeDefinedUUIDs_Characteristic_SUPPORTED_INCLINATION_RANGE, &LeDefinedUUIDs_Characteristic_SUPPORTED_RESISTANCE_LEVEL_RANGE, &LeDefinedUUIDs_Characteristic_SUPPORTED_HEART_RATE_RANGE, &LeDefinedUUIDs_Characteristic_SUPPORTED_POWER_RANGE, &LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_CONTROL_POINT, &LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_STATUS, "LLeDefinedUUIDs;" };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Characteristic = { "Characteristic", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x9, 1, 23, 23, -1, -1, -1, -1 };
  return &_LeDefinedUUIDs_Characteristic;
}

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Characteristic class]) {
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT, JavaUtilUUID_fromStringWithNSString_(@"00002a37-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING, JavaUtilUUID_fromStringWithNSString_(@"00002a29-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING, JavaUtilUUID_fromStringWithNSString_(@"00002a24-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING, JavaUtilUUID_fromStringWithNSString_(@"00002a25-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING, JavaUtilUUID_fromStringWithNSString_(@"00002a26-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING, JavaUtilUUID_fromStringWithNSString_(@"00002a27-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_APPEARANCE, JavaUtilUUID_fromStringWithNSString_(@"00002a01-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION, JavaUtilUUID_fromStringWithNSString_(@"00002a38-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_BATTERY_LEVEL, JavaUtilUUID_fromStringWithNSString_(@"00002a19-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT, JavaUtilUUID_fromStringWithNSString_(@"00002a63-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT, JavaUtilUUID_fromStringWithNSString_(@"00002a66-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT, JavaUtilUUID_fromStringWithNSString_(@"00002a5b-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SERVICE_CHANGED, JavaUtilUUID_fromStringWithNSString_(@"00002a05-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_FEATURE, JavaUtilUUID_fromStringWithNSString_(@"00002acc-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_INDOOR_BIKE_DATA, JavaUtilUUID_fromStringWithNSString_(@"00002ad2-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_TRAINING_STATUS, JavaUtilUUID_fromStringWithNSString_(@"00002ad3-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SUPPORTED_SPEED_RANGE, JavaUtilUUID_fromStringWithNSString_(@"00002ad4-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SUPPORTED_INCLINATION_RANGE, JavaUtilUUID_fromStringWithNSString_(@"00002ad5-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SUPPORTED_RESISTANCE_LEVEL_RANGE, JavaUtilUUID_fromStringWithNSString_(@"00002ad6-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SUPPORTED_HEART_RATE_RANGE, JavaUtilUUID_fromStringWithNSString_(@"00002ad7-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_SUPPORTED_POWER_RANGE, JavaUtilUUID_fromStringWithNSString_(@"00002ad8-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_CONTROL_POINT, JavaUtilUUID_fromStringWithNSString_(@"00002ad9-0000-1000-8000-00805f9b34fb"));
    JreStrongAssign(&LeDefinedUUIDs_Characteristic_FITNESS_MACHINE_STATUS, JavaUtilUUID_fromStringWithNSString_(@"00002ada-0000-1000-8000-00805f9b34fb"));
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Characteristic)
  }
}

@end

void LeDefinedUUIDs_Characteristic_init(LeDefinedUUIDs_Characteristic *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Characteristic *new_LeDefinedUUIDs_Characteristic_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Characteristic, init)
}

LeDefinedUUIDs_Characteristic *create_LeDefinedUUIDs_Characteristic_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Characteristic, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Characteristic)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Descriptor)

JavaUtilUUID *LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG;

@implementation LeDefinedUUIDs_Descriptor

+ (JavaUtilUUID *)CHAR_CLIENT_CONFIG {
  return LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Descriptor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CHAR_CLIENT_CONFIG", "LJavaUtilUUID;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG, "LLeDefinedUUIDs;" };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Descriptor = { "Descriptor", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x9, 1, 1, 1, -1, -1, -1, -1 };
  return &_LeDefinedUUIDs_Descriptor;
}

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Descriptor class]) {
    JreStrongAssign(&LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG, JavaUtilUUID_fromStringWithNSString_(@"00002902-0000-1000-8000-00805f9b34fb"));
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Descriptor)
  }
}

@end

void LeDefinedUUIDs_Descriptor_init(LeDefinedUUIDs_Descriptor *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Descriptor *new_LeDefinedUUIDs_Descriptor_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Descriptor, init)
}

LeDefinedUUIDs_Descriptor *create_LeDefinedUUIDs_Descriptor_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Descriptor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Descriptor)
