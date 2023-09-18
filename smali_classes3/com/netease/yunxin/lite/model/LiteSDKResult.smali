.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKResult;
.super Ljava/lang/Object;
.source "LiteSDKResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/model/LiteSDKResult$LiteSDKWarning;
    }
.end annotation


# static fields
.field public static final kLiteSDKADMInitPlayoutFailed:I = 0x9c44

.field public static final kLiteSDKADMInitRecordingFailed:I = 0x9c41

.field public static final kLiteSDKADMNoAuthorize:I = 0x9c40

.field public static final kLiteSDKADMPlayoutFailed:I = 0x9c48

.field public static final kLiteSDKADMRecordingFailed:I = 0x9c47

.field public static final kLiteSDKADMStartPlayoutFailed:I = 0x9c45

.field public static final kLiteSDKADMStartRecordingFailed:I = 0x9c42

.field public static final kLiteSDKADMStopPlayoutFailed:I = 0x9c46

.field public static final kLiteSDKADMStopRecordingFailed:I = 0x9c43

.field public static final kLiteSDKAddTrackFailed:I = 0x75fa

.field public static final kLiteSDKCameraOccupied:I = 0x754b

.field public static final kLiteSDKChannelAlreadyJoined:I = 0x7594

.field public static final kLiteSDKChannelNotJoined:I = 0x7595

.field public static final kLiteSDKChannelRepleatedlyLeave:I = 0x7596

.field public static final kLiteSDKConnectFailed:I = 0x753f

.field public static final kLiteSDKConnectionNotFound:I = 0x75f8

.field public static final kLiteSDKCreateDeviceSourceFailed:I = 0x753b

.field public static final kLiteSDKCreateDumpFileFailed:I = 0x7540

.field public static final kLiteSDKDataChannelExceedMaxDataLimit:I = 0x75ab

.field public static final kLiteSDKDesktopCaptureNotReady:I = 0x7546

.field public static final kLiteSDKDeviceNotFound:I = 0x7538

.field public static final kLiteSDKDevicePreviewAlreadyStarted:I = 0x753d

.field public static final kLiteSDKEncryptNotSuitable:I = 0x75a1

.field public static final kLiteSDKFatalError:I = 0x7531

.field public static final kLiteSDKInvalidDesktopCaptureParameters:I = 0x7545

.field public static final kLiteSDKInvalidDesktopCaptureState:I = 0x7544

.field public static final kLiteSDKInvalidDeviceSourceID:I = 0x7539

.field public static final kLiteSDKInvalidIndex:I = 0x7537

.field public static final kLiteSDKInvalidMediaRelayState:I = 0x759e

.field public static final kLiteSDKInvalidParameters:I = 0x7533

.field public static final kLiteSDKInvalidRender:I = 0x753c

.field public static final kLiteSDKInvalidState:I = 0x7535

.field public static final kLiteSDKInvalidSwitchChannelState:I = 0x759d

.field public static final kLiteSDKInvalidUserId:I = 0x759a

.field public static final kLiteSDKInvalidVideoProfile:I = 0x753a

.field public static final kLiteSDKJoinChannelFailed:I = 0x7597

.field public static final kLiteSDKKickedByRoomClosed:I = 0x75ff

.field public static final kLiteSDKKickedByServer:I = 0x75fe

.field public static final kLiteSDKKickedDueToSameUserId:I = 0x7601

.field public static final kLiteSDKLackOfResource:I = 0x7536

.field public static final kLiteSDKLeaveChannelForSwitch:I = 0x7600

.field public static final kLiteSDKMediaConnectionDisconnected:I = 0x75fc

.field public static final kLiteSDKMediaNotStarted:I = 0x759b

.field public static final kLiteSDKMediaRelayPermissionDenied:I = 0x759f

.field public static final kLiteSDKMediaRelayStopFailed:I = 0x75a0

.field public static final kLiteSDKNoError:I = 0x0

.field public static final kLiteSDKNotSupport:I = 0x7534

.field public static final kLiteSDKOSAuthorizeFailed:I = 0x765c

.field public static final kLiteSDKOutOfMemory:I = 0x7532

.field public static final kLiteSDKSEIExceedMaxDataLimit:I = 0x75aa

.field public static final kLiteSDKServerBroadcasterReachedTheLimit:I = 0xfa1

.field public static final kLiteSDKServerInvalidAppKey:I = 0x1a1

.field public static final kLiteSDKServerInvalidParameters:I = 0x19e

.field public static final kLiteSDKServerLiveStreamDuplicateId:I = 0x57b

.field public static final kLiteSDKServerLiveStreamExceedLimit:I = 0x57a

.field public static final kLiteSDKServerLiveStreamInvaildParameters:I = 0x578

.field public static final kLiteSDKServerLiveStreamInvaildRequest:I = 0x515

.field public static final kLiteSDKServerLiveStreamInvalidLayout:I = 0x5dd

.field public static final kLiteSDKServerLiveStreamNotFound:I = 0x57c

.field public static final kLiteSDKServerLiveStreamRequestFailed:I = 0x589

.field public static final kLiteSDKServerLiveStreamRoomHasExited:I = 0x579

.field public static final kLiteSDKServerLiveStreamUserPictureError:I = 0x5de

.field public static final kLiteSDKServerOnlySupportTwoUsers:I = 0x258

.field public static final kLiteSDKServerPermissionDenied:I = 0x193

.field public static final kLiteSDKServerPermissionKeyError:I = 0x385

.field public static final kLiteSDKServerPermissionKeyNoPublishPermission:I = 0x654

.field public static final kLiteSDKServerPermissionKeyNoSubscribePermission:I = 0xaf3

.field public static final kLiteSDKServerPermissionKeyTimeout:I = 0x386

.field public static final kLiteSDKServerPersonsInRoomReachedTheLimit:I = 0xfa3

.field public static final kLiteSDKServerRequestTimeout:I = 0x198

.field public static final kLiteSDKServerUnknownError:I = 0x1f4

.field public static final kLiteSDKSessionNotFound:I = 0x7598

.field public static final kLiteSDKSignalDisconnected:I = 0x75fd

.field public static final kLiteSDKSourceNotFound:I = 0x759c

.field public static final kLiteSDKStartDumpFailed:I = 0x7541

.field public static final kLiteSDKStreamNotFound:I = 0x75f9

.field public static final kLiteSDKTrackNotFound:I = 0x75fb

.field public static final kLiteSDKTransmitPendding:I = 0x753e

.field public static final kLiteSDKUserNotFound:I = 0x7599

.field public static final kLiteSDKUserPermissionKeyAuthFailed:I = 0x75a9

.field public static final kLiteSDKVDMCameraCreateFailed:I = 0xc483

.field public static final kLiteSDKVDMCameraDisconnect:I = 0xc47f

.field public static final kLiteSDKVDMCameraFreezed:I = 0xc480

.field public static final kLiteSDKVDMCameraNoFrame:I = 0xc482

.field public static final kLiteSDKVDMCameraUnknownError:I = 0xc481

.field public static final kLiteSDKVDMNoAuthorize:I = 0xc350

.field public static final kLiteSDKVDMNotScreenUseSubstream:I = 0xc351

.field public static final kLiteSDKVDMScreenCaptureNoAuthorize:I = 0xc4e0
