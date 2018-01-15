//
//  Copyright (c) 2016 Intel Corporation. All rights reserved.
//

#import "talk/ics/sdk/conference/objc/RTCConferenceUser+Internal.h"
#import "webrtc/sdk/objc/Framework/Classes/Common/NSString+StdString.h"

/*
@implementation RTCConferencePermission {
  std::shared_ptr<const ics::conference::Permission> _nativePermission;
}

-(BOOL)canPublish{
  return _nativePermission->CanPublish()? YES : NO;
}

-(BOOL)canSubscribe{
  return _nativePermission->CanSubscribe()? YES : NO;
}

-(BOOL)canRecord{
  return _nativePermission->CanRecord()? YES : NO;
}

@end

@implementation RTCConferencePermission (Internal)

-(instancetype)initWithNativePermission:(std::shared_ptr<const
ics::conference::Permission>)permission {
  self=[super init];
  [self setNativePermission: permission];
  return self;
}

-(void)setNativePermission:(std::shared_ptr<const
ics::conference::Permission>)permission {
  _nativePermission=permission;
}

-(std::shared_ptr<const ics::conference::Permission>)nativePermission{
  return _nativePermission;
}

@end
*/

@implementation RTCConferenceUser {
  std::shared_ptr<const ics::conference::User> _nativeUser;
}

- (NSString*)getUserId {
  return [NSString stringForStdString:_nativeUser->Id()];
}

- (NSString*)getName {
  return [NSString stringForStdString:_nativeUser->Name()];
}

- (NSString*)getRole {
  return [NSString stringForStdString:_nativeUser->Role()];
}

/*
-(RTCConferencePermission*)getPermissions{
  return [[RTCConferencePermission alloc] initWithNativePermission:
std::make_shared<ics::conference::Permission>(_nativeUser->Permissions())];
}*/

@end

@implementation RTCConferenceUser (Internal)

- (instancetype)initWithNativeUser:
    (std::shared_ptr<const ics::conference::User>)user {
  self = [super init];
  [self setNativeUser:user];
  return self;
}

- (void)setNativeUser:(std::shared_ptr<const ics::conference::User>)user {
  _nativeUser = user;
}

- (std::shared_ptr<const ics::conference::User>)nativeUser {
  return _nativeUser;
}

@end
