.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKApiEventType;
.super Ljava/lang/Object;
.source "LiteSDKApiEventType.java"


# static fields
.field public static final kLiteLinkSDKAPIDirectCallHangUp:Ljava/lang/String; = "directCallHangupCall"

.field public static final kLiteLinkSDKAPIDirectCallInitialize:Ljava/lang/String; = "setUpEngineWithContextInLinkEngine"

.field public static final kLiteLinkSDKAPIDirectCallStart:Ljava/lang/String; = "directCallStartCallWithParam"

.field public static final kLiteSDKAPIAudioAdjustLoopbackRecordingSignalVolume:Ljava/lang/String; = "adjustLoopbackRecordingSignalVolume"

.field public static final kLiteSDKAPIAudioAdjustPlaybackSignalVolume:Ljava/lang/String; = "adjustAudioPlaybackSignalVolume"

.field public static final kLiteSDKAPIAudioAdjustRecordSignalVolume:Ljava/lang/String; = "adjustAudioRecordSignalVolume"

.field public static final kLiteSDKAPIAudioAdjustUserPlaybackSignalVolume:Ljava/lang/String; = "adjustUserPlaybackSignalVolume"

.field public static final kLiteSDKAPIAudioDeviceGetSpeakerphoneOn:Ljava/lang/String; = "getSpeakerphoneOn"

.field public static final kLiteSDKAPIAudioDeviceSetPlayoutMute:Ljava/lang/String; = "setPlayoutDeviceMute"

.field public static final kLiteSDKAPIAudioDeviceSetRecordMute:Ljava/lang/String; = "setRecordDeviceMute"

.field public static final kLiteSDKAPIAudioDeviceSetSpeakerphoneOn:Ljava/lang/String; = "setSpeakerphoneOn"

.field public static final kLiteSDKAPIAudioEarbackEnable:Ljava/lang/String; = "enableEarback"

.field public static final kLiteSDKAPIAudioEarbackSetVolume:Ljava/lang/String; = "setEarbackVolume"

.field public static final kLiteSDKAPIAudioEffectPause:Ljava/lang/String; = "pauseEffect"

.field public static final kLiteSDKAPIAudioEffectPauseAll:Ljava/lang/String; = "pauseAllEffects"

.field public static final kLiteSDKAPIAudioEffectPlay:Ljava/lang/String; = "playEffect"

.field public static final kLiteSDKAPIAudioEffectResume:Ljava/lang/String; = "resumeEffect"

.field public static final kLiteSDKAPIAudioEffectResumeAll:Ljava/lang/String; = "resumeAllEffects"

.field public static final kLiteSDKAPIAudioEffectStop:Ljava/lang/String; = "stopEffect"

.field public static final kLiteSDKAPIAudioEffectStopAll:Ljava/lang/String; = "stopAllEffects"

.field public static final kLiteSDKAPIAudioEnableLocalStream:Ljava/lang/String; = "enableLocalAudio"

.field public static final kLiteSDKAPIAudioEnableLocalSubstream:Ljava/lang/String; = "enableLocalSubStreamAudio"

.field public static final kLiteSDKAPIAudioEnableLoopbackRecording:Ljava/lang/String; = "enableLoopbackRecording"

.field public static final kLiteSDKAPIAudioEnableVolumeIndication:Ljava/lang/String; = "enableAudioVolumeIndication"

.field public static final kLiteSDKAPIAudioMixingPause:Ljava/lang/String; = "pauseAudioMixing"

.field public static final kLiteSDKAPIAudioMixingResume:Ljava/lang/String; = "resumeAudioMixing"

.field public static final kLiteSDKAPIAudioMixingStart:Ljava/lang/String; = "startAudioMixing"

.field public static final kLiteSDKAPIAudioMixingStop:Ljava/lang/String; = "stopAudioMixing"

.field public static final kLiteSDKAPIAudioMuteLocalStream:Ljava/lang/String; = "muteLocalAudioStream"

.field public static final kLiteSDKAPIAudioMuteLocalSubstream:Ljava/lang/String; = "muteLocalSubStreamAudio"

.field public static final kLiteSDKAPIAudioSetAllowSubscribeMyAudioWhitelist:Ljava/lang/String; = "setAudioSubscribeOnlyBy"

.field public static final kLiteSDKAPIAudioSetAudioSessionOperationRestriction:Ljava/lang/String; = "setAudioSessionOperationRestriction"

.field public static final kLiteSDKAPIAudioSetExternalRender:Ljava/lang/String; = "setExternalAudioRender"

.field public static final kLiteSDKAPIAudioSetExternalSource:Ljava/lang/String; = "setExternalAudioSource"

.field public static final kLiteSDKAPIAudioSetExternalSubstreamSource:Ljava/lang/String; = "setExternalSubStreamAudioSource"

.field public static final kLiteSDKAPIAudioSetFocusMode:Ljava/lang/String; = "setAudioFocusMode"

.field public static final kLiteSDKAPIAudioSetFrameObserver:Ljava/lang/String; = "setAudioFrameObserver"

.field public static final kLiteSDKAPIAudioSetHighPriorityRemoteStream:Ljava/lang/String; = "setRemoteHighPriorityAudioStream"

.field public static final kLiteSDKAPIAudioSetMixedFrameParameters:Ljava/lang/String; = "setMixedAudioFrameParameters"

.field public static final kLiteSDKAPIAudioSetPlaybackFrameParameters:Ljava/lang/String; = "setPlaybackAudioFrameParameters"

.field public static final kLiteSDKAPIAudioSetProfile:Ljava/lang/String; = "setAudioProfile"

.field public static final kLiteSDKAPIAudioSetRecordingFrameParameters:Ljava/lang/String; = "setRecordingAudioFrameParameters"

.field public static final kLiteSDKAPIAudioStartDump:Ljava/lang/String; = "startAudioDump"

.field public static final kLiteSDKAPIAudioStartLoopbackTest:Ljava/lang/String; = "startLoopbackTest"

.field public static final kLiteSDKAPIAudioStartPlayoutTest:Ljava/lang/String; = "startPlayoutTest"

.field public static final kLiteSDKAPIAudioStartRecordTest:Ljava/lang/String; = "startAudioRecordTest"

.field public static final kLiteSDKAPIAudioStartRecording:Ljava/lang/String; = "startAudioRecording"

.field public static final kLiteSDKAPIAudioStopDump:Ljava/lang/String; = "stopAudioDump"

.field public static final kLiteSDKAPIAudioStopLoopbackTest:Ljava/lang/String; = "startLoopbackTest"

.field public static final kLiteSDKAPIAudioStopPlayoutTest:Ljava/lang/String; = "stopPlayoutTest"

.field public static final kLiteSDKAPIAudioStopRecordTest:Ljava/lang/String; = "startAudioRecordTest"

.field public static final kLiteSDKAPIAudioStopRecording:Ljava/lang/String; = "stopAudioRecording"

.field public static final kLiteSDKAPIAudioSubscribeAllRemoteStream:Ljava/lang/String; = "subscribeAllRemoteAudioStream"

.field public static final kLiteSDKAPIAudioSubscribeRemoteStream:Ljava/lang/String; = "subscribeRemoteAudioStream"

.field public static final kLiteSDKAPIAudioSubscribeRemoteSubstream:Ljava/lang/String; = "subscribeRemoteSubStreamAudio"

.field public static final kLiteSDKAPICommonEnableEncryption:Ljava/lang/String; = "enableEncryption"

.field public static final kLiteSDKAPICommonEnableMediaPublish:Ljava/lang/String; = "enableMediaPub"

.field public static final kLiteSDKAPICommonExecutePrivateApi:Ljava/lang/String; = "executePrivateApi"

.field public static final kLiteSDKAPICommonGetNtpTimeOffset:Ljava/lang/String; = "getNtpTimeOffset"

.field public static final kLiteSDKAPICommonReportApiEvent:Ljava/lang/String; = "reportApiEvent"

.field public static final kLiteSDKAPICommonSetChannelProfile:Ljava/lang/String; = "setChannelProfile"

.field public static final kLiteSDKAPICommonSetClientRole:Ljava/lang/String; = "setClientRole"

.field public static final kLiteSDKAPICommonSetCloudProxy:Ljava/lang/String; = "setCloudProxy"

.field public static final kLiteSDKAPICommonSetLocalMediaPriority:Ljava/lang/String; = "setLocalMediaPriority"

.field public static final kLiteSDKAPICommonSetLocalPubFallbackOption:Ljava/lang/String; = "setLocalPubFallbackOption"

.field public static final kLiteSDKAPICommonSetRemoteSubFallbackOption:Ljava/lang/String; = "setRemoteSubFallbackOption"

.field public static final kLiteSDKAPICommonSetStreamAlignmentProperty:Ljava/lang/String; = "setStreamAlignmentProperty"

.field public static final kLiteSDKAPICommonSwitchChannel:Ljava/lang/String; = "switchChannel"

.field public static final kLiteSDKAPICommonUpdatePermissionKey:Ljava/lang/String; = "updatePermissionKey"

.field public static final kLiteSDKAPICommonUploadSdkInfo:Ljava/lang/String; = "uploadSdkInfo"

.field public static final kLiteSDKAPIDataEnableLocalStream:Ljava/lang/String; = "enableLocalData"

.field public static final kLiteSDKAPIDataSubscribeRemoteStream:Ljava/lang/String; = "subscribeRemoteData"

.field public static final kLiteSDKAPIEngineCenterSetParameters:Ljava/lang/String; = "setParameters"

.field public static final kLiteSDKAPIEngineInitialize:Ljava/lang/String; = "init"

.field public static final kLiteSDKAPIEngineJoinChannel:Ljava/lang/String; = "joinChannel"

.field public static final kLiteSDKAPIEngineLeaveChannel:Ljava/lang/String; = "leaveChannel"

.field public static final kLiteSDKAPILiveStreamAddTask:Ljava/lang/String; = "addLiveStreamTask"

.field public static final kLiteSDKAPILiveStreamRemoveTask:Ljava/lang/String; = "removeLiveStreamTask"

.field public static final kLiteSDKAPILiveStreamUpdateTask:Ljava/lang/String; = "updateLiveStreamTask"

.field public static final kLiteSDKAPIMediaRelayStart:Ljava/lang/String; = "startChannelMediaRelay"

.field public static final kLiteSDKAPIMediaRelayStop:Ljava/lang/String; = "stopChannelMediaRelay"

.field public static final kLiteSDKAPIMediaRelayUpdate:Ljava/lang/String; = "updateChannelMediaRelay"

.field public static final kLiteSDKAPIMediaStatsAddObserver:Ljava/lang/String; = "addMediaStatsObserver"

.field public static final kLiteSDKAPIMediaStatsClearupObserver:Ljava/lang/String; = "clearupMediaStatsObserver"

.field public static final kLiteSDKAPIMediaStatsRemoveObserver:Ljava/lang/String; = "removeMediaStatsObserver"

.field public static final kLiteSDKAPIProbeTestStart:Ljava/lang/String; = "startLastmileProbeTest"

.field public static final kLiteSDKAPIProbeTestStop:Ljava/lang/String; = "stopLastmileProbeTest"

.field public static final kLiteSDKAPIScreenCapturePause:Ljava/lang/String; = "pauseScreenCapture"

.field public static final kLiteSDKAPIScreenCaptureResume:Ljava/lang/String; = "resumeScreenCapture"

.field public static final kLiteSDKAPIScreenCaptureStart:Ljava/lang/String; = "startScreenCapture"

.field public static final kLiteSDKAPIScreenCaptureStop:Ljava/lang/String; = "stopScreenCapture"

.field public static final kLiteSDKAPISetEngineCallback:Ljava/lang/String; = "setNERtcCallback"

.field public static final kLiteSDKAPISetLocalExternalVideoRenderer:Ljava/lang/String; = "setLocalExternalVideoRenderer"

.field public static final kLiteSDKAPISetRemoteExternalVideoRenderer:Ljava/lang/String; = "setRemoteExternalVideoRenderer"

.field public static final kLiteSDKAPITypeNone:Ljava/lang/String; = ""

.field public static final kLiteSDKAPIVideoBeautyAddFilter:Ljava/lang/String; = "addBeautyFilter"

.field public static final kLiteSDKAPIVideoBeautyAddMakeup:Ljava/lang/String; = "addBeautyMakeup"

.field public static final kLiteSDKAPIVideoBeautyAddSticker:Ljava/lang/String; = "addBeautySticker"

.field public static final kLiteSDKAPIVideoBeautyAddTemplate:Ljava/lang/String; = "addBeautyTemplate"

.field public static final kLiteSDKAPIVideoBeautyEnable:Ljava/lang/String; = "enableBeauty"

.field public static final kLiteSDKAPIVideoBeautyRemoveFilter:Ljava/lang/String; = "removeBeautyFilter"

.field public static final kLiteSDKAPIVideoBeautyRemoveMakeup:Ljava/lang/String; = "removeBeautyMakeup"

.field public static final kLiteSDKAPIVideoBeautyRemoveSticker:Ljava/lang/String; = "removeBeautySticker"

.field public static final kLiteSDKAPIVideoBeautySetEffect:Ljava/lang/String; = "setBeautyEffect"

.field public static final kLiteSDKAPIVideoBeautyStart:Ljava/lang/String; = "startBeauty"

.field public static final kLiteSDKAPIVideoBeautyStop:Ljava/lang/String; = "stopBeauty"

.field public static final kLiteSDKAPIVideoDeviceSetCameraExposurePosition:Ljava/lang/String; = "setCameraExposurePosition"

.field public static final kLiteSDKAPIVideoDeviceSetCameraFocusPosition:Ljava/lang/String; = "setCameraFocusPosition"

.field public static final kLiteSDKAPIVideoDeviceSetCameraTorchOn:Ljava/lang/String; = "setCameraTorchOn"

.field public static final kLiteSDKAPIVideoDeviceSetCameraZoomFactor:Ljava/lang/String; = "setCameraZoomFactor"

.field public static final kLiteSDKAPIVideoDeviceSwitchCamera:Ljava/lang/String; = "switchCamera"

.field public static final kLiteSDKAPIVideoDeviceSwitchCameraWithPosition:Ljava/lang/String; = "switchCameraWithPosition"

.field public static final kLiteSDKAPIVideoEnableCorrection:Ljava/lang/String; = "enableVideoCorrection"

.field public static final kLiteSDKAPIVideoEnableDualStreamMode:Ljava/lang/String; = "enableDualStreamMode"

.field public static final kLiteSDKAPIVideoEnableLocalStream:Ljava/lang/String; = "enableLocalVideo"

.field public static final kLiteSDKAPIVideoEnableSuperResolution:Ljava/lang/String; = "enableSuperResolution"

.field public static final kLiteSDKAPIVideoEnableVirtualBackground:Ljava/lang/String; = "enableVirtualBackground"

.field public static final kLiteSDKAPIVideoMuteLocalStream:Ljava/lang/String; = "muteLocalVideoStream"

.field public static final kLiteSDKAPIVideoSetCameraCaptureConfig:Ljava/lang/String; = "setCameraCaptureConfig"

.field public static final kLiteSDKAPIVideoSetCorrectionConfig:Ljava/lang/String; = "setVideoCorrectionConfig"

.field public static final kLiteSDKAPIVideoSetExternalSource:Ljava/lang/String; = "setExternalVideoSource"

.field public static final kLiteSDKAPIVideoSetLocalVideoConfig:Ljava/lang/String; = "setLocalVideoConfig"

.field public static final kLiteSDKAPIVideoSetLocalWatermarkConfigs:Ljava/lang/String; = "setLocalVideoWatermarkConfigs"

.field public static final kLiteSDKAPIVideoSetScalingMode:Ljava/lang/String; = "setScalingType"

.field public static final kLiteSDKAPIVideoSetVideoCallback:Ljava/lang/String; = "setVideoCallback"

.field public static final kLiteSDKAPIVideoSetupLocalCanvas:Ljava/lang/String; = "setupLocalVideoCanvas"

.field public static final kLiteSDKAPIVideoSetupLocalSubstreamCanvas:Ljava/lang/String; = "setupLocalSubStreamVideoCanvas"

.field public static final kLiteSDKAPIVideoSetupRemoteCanvas:Ljava/lang/String; = "setupRemoteVideoCanvas"

.field public static final kLiteSDKAPIVideoSetupRemoteSubstreamCanvas:Ljava/lang/String; = "setupRemoteSubStreamVideoCanvas"

.field public static final kLiteSDKAPIVideoStartPreview:Ljava/lang/String; = "startVideoPreview"

.field public static final kLiteSDKAPIVideoStopPreview:Ljava/lang/String; = "stopVideoPreview"

.field public static final kLiteSDKAPIVideoSubscribeRemoteStream:Ljava/lang/String; = "subscribeRemoteVideoStream"

.field public static final kLiteSDKAPIVideoSubscribeRemoteSubstream:Ljava/lang/String; = "subscribeRemoteSubStreamVideo"

.field public static final kLiteSDKAPIVoiceProcessSetAudioEffectPreset:Ljava/lang/String; = "setAudioEffectPreset"

.field public static final kLiteSDKAPIVoiceProcessSetLocalVoiceEqualization:Ljava/lang/String; = "setLocalVoiceEqualization"

.field public static final kLiteSDKAPIVoiceProcessSetLocalVoicePitch:Ljava/lang/String; = "setLocalVoicePitch"

.field public static final kLiteSDKAPIVoiceProcessSetLocalVoiceReverbParam:Ljava/lang/String; = "setLocalVoiceReverbParam"

.field public static final kLiteSDKAPIVoiceProcessSetVoiceBeautifierPreset:Ljava/lang/String; = "setVoiceBeautifierPreset"

.field public static final kLiteSDKCallbackAPIOnAudioDeviceStateChanged:Ljava/lang/String; = "OnAudioDeviceStateChanged"

.field public static final kLiteSDKCallbackAPIOnAudioHasHowling:Ljava/lang/String; = "OnAudioHasHowling"

.field public static final kLiteSDKCallbackAPIOnChannelStateChanged:Ljava/lang/String; = "OnChannelStateChanged"

.field public static final kLiteSDKCallbackAPIOnJoin:Ljava/lang/String; = "OnJoin"

.field public static final kLiteSDKCallbackAPIOnVideoDeviceStateChanged:Ljava/lang/String; = "OnVideoDeviceStateChanged"
