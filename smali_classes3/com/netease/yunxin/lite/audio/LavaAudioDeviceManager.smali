.class public final Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
.super Ljava/lang/Object;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;,
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;,
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;,
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;,
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioDevice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioDeviceManager"

.field private static final VOLUME_LOGGER_INTERVAL_MS:I = 0x1388


# instance fields
.field private bluetoothTryReconnect:Z

.field private mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

.field private volatile mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

.field private mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

.field private mCallProximityManager:Lcom/netease/yunxin/lite/audio/CallProximityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultAudioDevice:I

.field private mHandler:Landroid/os/Handler;

.field private mHasWiredHeadset:Z

.field private mProximityActivated:Z

.field private mSavedAudioMode:I

.field private mSavedIsMicrophoneMute:Z

.field private mSavedIsSpeakerPhoneOn:Z

.field private volatile mSelectedAudioDevice:I

.field private mUserSelectedAudioDevice:I

.field private final mVolumeLogger:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

.field private mWiredHeadsetReceiver:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;

.field private volatile startTask:Lcom/netease/yunxin/lite/util/CancelableTask;

.field private wiredHeadsetHasMic:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 78
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedAudioMode:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsSpeakerPhoneOn:Z

    .line 80
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsMicrophoneMute:Z

    .line 82
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    .line 92
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    .line 93
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    .line 94
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mProximityActivated:Z

    .line 100
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    .line 767
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->wiredHeadsetHasMic:Z

    .line 123
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 124
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    const/16 v0, 0x2ee0

    .line 126
    invoke-static {p1, p0, v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->create(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;I)Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 127
    new-instance p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mWiredHeadsetReceiver:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;

    .line 128
    sget-object p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    .line 129
    new-instance p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p1, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mVolumeLogger:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;ILcom/netease/yunxin/lite/util/CancelableTask;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->startInner(IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;ILcom/netease/yunxin/lite/util/CancelableTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->proximityActivated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->onProximitySensorChangedState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->stopInner()V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    return p0
.end method

.method static synthetic access$602(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    return p1
.end method

.method static synthetic access$702(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->wiredHeadsetHasMic:Z

    return p1
.end method

.method public static create()Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
    .locals 2

    .line 119
    new-instance v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private hasEarpiece()Z
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasExternalMic(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedAudioDevice"
        }
    .end annotation

    .line 773
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnMarshmallowOrHigher()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 775
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 776
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    if-eq p1, v3, :cond_4

    .line 777
    :cond_0
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 784
    iget-boolean v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->wiredHeadsetHasMic:Z

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_5

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 790
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasExternalMic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , selectedAudioDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioDeviceManager"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private hasWiredHeadset()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .line 660
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerAudioFocusRequest$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 307
    invoke-static {p0}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioFocusChangeToString(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioDeviceManager"

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$startInner$0()V
    .locals 4

    .line 259
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getAudioMode()I

    move-result v0

    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getStreamType()I

    move-result v1

    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getAudioSource()I

    move-result v2

    const-string v3, "AudioDeviceManager"

    invoke-static {v3, v0, v1, v2}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->logAudioProfile(Ljava/lang/String;III)V

    .line 260
    invoke-static {v3}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->logAudioState(Ljava/lang/String;)V

    return-void
.end method

.method private onProximitySensorChangedState(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nearState"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const-string v1, "AudioDeviceManager"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    .line 591
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    const/4 v3, 0x3

    .line 592
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProximitySensorChangedState -> near: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 597
    iget p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    if-eq p1, v2, :cond_3

    .line 598
    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setAudioDeviceInternal(I)V

    goto :goto_0

    .line 601
    :cond_0
    iget p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    if-nez p1, :cond_1

    .line 604
    iget p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    .line 607
    :cond_1
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    if-eq p1, v0, :cond_3

    .line 608
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setAudioDeviceInternal(I)V

    goto :goto_0

    :cond_2
    const-string p1, "onProximitySensorChangedState -> ignore"

    .line 612
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private proximityActivated()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mProximityActivated:Z

    return v0
.end method

.method private registerAudioDeviceCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "register"
        }
    .end annotation

    .line 382
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-nez p1, :cond_1

    .line 385
    new-instance p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$5;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$5;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 411
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioFocusRequest(ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "register",
            "streamType",
            "focusMode"
        }
    .end annotation

    const-string v0, "AudioDeviceManager"

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez p1, :cond_2

    .line 306
    sget-object p1, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;->INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz p3, :cond_2

    .line 312
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Audio focus request granted for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->streamTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Audio focus request failed"

    .line 316
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz p1, :cond_2

    .line 322
    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string p1, "Abandoned audio focus for VOICE_CALL streams"

    .line 324
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerAudioPlaybackCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "register"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnOreoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-nez p1, :cond_1

    .line 360
    new-instance p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$4;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$4;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 369
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioRecordingCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "register"
        }
    .end annotation

    .line 332
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-nez p1, :cond_1

    .line 335
    new-instance p1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$3;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$3;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 344
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz p1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreAudioStatus()V
    .locals 3

    const-string v0, "AudioDeviceManager"

    const-string v1, "restore audio status"

    .line 626
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsMicrophoneMute:Z

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setMicrophoneMute(Z)V

    const-string v1, "restore setMicrophoneMute done"

    .line 629
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 633
    :cond_0
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsSpeakerPhoneOn:Z

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setSpeakerphoneOn(Z)V

    const-string v1, "restore setSpeakerphoneOn done"

    .line 634
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1
    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedAudioMode:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    .line 638
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 640
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore system audio state[audio mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedAudioMode:I

    invoke-static {v2}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", microphone mute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsMicrophoneMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", speakerphone on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsSpeakerPhoneOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveAudioStatus()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedAudioMode:I

    .line 618
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsSpeakerPhoneOn:Z

    .line 619
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsMicrophoneMute:Z

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save system audio state[audio mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedAudioMode:I

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", microphone mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsMicrophoneMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", speakerphone on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSavedIsSpeakerPhoneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDeviceManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAudioDeviceInternal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioDeviceInternal(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDeviceManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string v0, "Invalid audio device selection"

    .line 506
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 503
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setSpeakerphoneOn(Z)V

    .line 510
    :goto_0
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    return-void
.end method

.method private setMicrophoneMute(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method

.method private setSpeakerphoneOn(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerphoneOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ,result -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioDeviceManager"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startInner(IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;ILcom/netease/yunxin/lite/util/CancelableTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultAudioDevice",
            "enableCallProximity",
            "audioManagerEvents",
            "focusMode",
            "startTask"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioManager start inner , taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/yunxin/lite/util/CancelableTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDeviceManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p5}, Lcom/netease/yunxin/lite/util/CancelableTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioManager start inner , but task canceled , taskId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/yunxin/lite/util/CancelableTask;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 169
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    sget-object v2, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    if-ne v0, v2, :cond_1

    const-string p1, "AudioManager is already active"

    .line 170
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnOreoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active Playback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioPlaybackConfigurationToString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getActivePlaybackConfigurations exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_2
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active Recording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioRecordingConfigurationToString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getActiveRecordingConfigurations exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    .line 198
    iput-object p3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    .line 199
    sget-object v2, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    .line 201
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 202
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 203
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    .line 205
    :cond_4
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->hasWiredHeadset()Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    .line 211
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getStreamType()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, p4}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioFocusRequest(ZII)V

    .line 213
    invoke-direct {p0, v3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioDeviceCallback(Z)V

    .line 215
    invoke-direct {p0, v3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioPlaybackCallback(Z)V

    .line 217
    invoke-direct {p0, v3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioRecordingCallback(Z)V

    .line 220
    iget-object p4, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mVolumeLogger:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-virtual {p4, p3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->start(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;)V

    .line 222
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setMicrophoneMute(Z)V

    .line 224
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    .line 225
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    .line 226
    iget p3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    if-nez p3, :cond_5

    .line 227
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 231
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->start()V

    .line 233
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    .line 235
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mWiredHeadsetReceiver:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;

    new-instance p4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p2, :cond_7

    .line 238
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mCallProximityManager:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    if-nez p1, :cond_6

    .line 239
    new-instance p1, Lcom/netease/yunxin/lite/audio/CallProximityManager;

    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;

    invoke-direct {p3, p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    invoke-direct {p1, p2, p3}, Lcom/netease/yunxin/lite/audio/CallProximityManager;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mCallProximityManager:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    .line 253
    :cond_6
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mCallProximityManager:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->startTracking()V

    :cond_7
    const-string p1, "AudioManager started"

    .line 257
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;->INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    invoke-virtual {p5}, Lcom/netease/yunxin/lite/util/CancelableTask;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioManager started , but task canceled ,so call stop taskId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/yunxin/lite/util/CancelableTask;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->stopInner()V

    :cond_8
    return-void
.end method

.method private stopInner()V
    .locals 3

    const-string v0, "AudioDeviceManager"

    const-string v1, "stopInner"

    .line 451
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 453
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    sget-object v2, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    if-eq v1, v2, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to stop AudioManager in incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    sget-object v1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    iput-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    .line 459
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mVolumeLogger:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$500(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)V

    const-string v1, "stop volume logger done"

    .line 460
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mWiredHeadsetReceiver:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 465
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "stop unregister receiver done"

    .line 468
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->stop()V

    const-string v1, "stop bluetooth done"

    .line 471
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 473
    invoke-direct {p0, v1, v1, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioFocusRequest(ZII)V

    .line 474
    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioDeviceCallback(Z)V

    .line 475
    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioPlaybackCallback(Z)V

    .line 476
    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->registerAudioRecordingCallback(Z)V

    .line 478
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mCallProximityManager:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->stopTracking()V

    :cond_1
    const-string v1, "stop call proximity done"

    .line 481
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 484
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    .line 485
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHandler:Landroid/os/Handler;

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->restoreAudioStatus()V

    .line 490
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    const-string v1, "AudioManager stopped inner"

    .line 491
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public activateProximity(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate proximity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDeviceManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mProximityActivated:Z

    return-void
.end method

.method public getAudioDevices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 559
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 560
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAudioDevice()I
    .locals 1

    .line 565
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 566
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    return v0
.end method

.method public isBlueToothInA2DP()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->blueToothIsSCO()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reconnectBlueTooth()V
    .locals 1

    .line 552
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    .line 554
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    return-void
.end method

.method public selectAudioDevice(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 537
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select audio device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDeviceManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not select "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from available "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    .line 542
    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 545
    :cond_0
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    .line 546
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    return-void
.end method

.method public setAudioBlueToothSCO(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blueToothSCO"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    const-string v1, "AudioDeviceManager"

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioBlueToothSCO but NPL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothScoConnectPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "setAudioBlueToothSCO no permission"

    .line 285
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 288
    :cond_1
    iget v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v2}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->blueToothIsSCO()Z

    move-result v2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x1

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v2, p1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->setAudioBlueToothSCO(Z)V

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->reconnectBlueTooth()V

    .line 293
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioBlueToothSCO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , re start: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultAudioDevice(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultDevice"
        }
    .end annotation

    .line 515
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    const/4 v0, 0x2

    const-string v1, "AudioDeviceManager"

    const/4 v2, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    const-string p1, "Invalid default audio device selection"

    .line 528
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_0
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    goto :goto_0

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    goto :goto_0

    .line 524
    :cond_2
    iput v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    .line 531
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultAudioDevice(device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    return-void
.end method

.method public setMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioMode"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic set audio mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioDeviceManager"

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  done"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start(IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultAudioDevice",
            "enableCallProximity",
            "audioManagerEvents",
            "focusMode"
        }
    .end annotation

    const-string v0, "AudioDeviceManager"

    const-string v1, "start"

    .line 140
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    sget-object v2, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    if-ne v1, v2, :cond_0

    const-string p1, "AudioManager is already active"

    .line 142
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->saveAudioStatus()V

    .line 147
    new-instance v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;

    const-string v3, "LavaAudioDeviceManager#start"

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Ljava/lang/String;IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;I)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->startTask:Lcom/netease/yunxin/lite/util/CancelableTask;

    .line 154
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->startTask:Lcom/netease/yunxin/lite/util/CancelableTask;

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 5

    const-string v0, "AudioDeviceManager"

    const-string v1, "stop"

    .line 424
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->startTask:Lcom/netease/yunxin/lite/util/CancelableTask;

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/util/CancelableTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/util/CancelableTask;->cancel()V

    const/4 v2, 0x1

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel start taskId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/util/CancelableTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    sget-object v3, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    if-eq v1, v3, :cond_2

    if-eqz v2, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->restoreAudioStatus()V

    .line 438
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to stop AudioManager in incorrect state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , restore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_2
    new-instance v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$6;

    const-string v1, "LavaAudioDeviceManager#stop"

    invoke-direct {v0, p0, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$6;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Ljava/lang/String;)V

    .line 447
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateAudioDeviceState()V
    .locals 11

    .line 664
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    sget-object v1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    const-string v2, "AudioDeviceManager"

    if-eq v0, v1, :cond_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudioDeviceState , but state is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerState:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 668
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current device status: wired headset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bluetooth state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 672
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Integer;

    .line 673
    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pre worked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    .line 674
    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    .line 675
    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne v0, v1, :cond_1

    .line 678
    iput-boolean v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 682
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 683
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_DISCONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    if-eqz v0, :cond_3

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->updateDevice()V

    .line 688
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 690
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v1

    sget-object v4, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const/4 v5, 0x4

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 691
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v1

    sget-object v4, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 692
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v1

    sget-object v4, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne v1, v4, :cond_5

    .line 693
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_5
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 697
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    .line 699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->hasEarpiece()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 706
    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    .line 708
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    if-ne v0, v5, :cond_9

    .line 710
    iget-object v6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 711
    invoke-virtual {v6}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v6

    sget-object v7, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v6}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v6

    sget-object v7, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne v6, v7, :cond_9

    :cond_8
    const/4 v0, 0x0

    .line 715
    :cond_9
    iget-boolean v6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    if-nez v6, :cond_a

    iget v6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mUserSelectedAudioDevice:I

    if-ne v6, v4, :cond_a

    const/4 v0, 0x0

    .line 719
    :cond_a
    iget v6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mDefaultAudioDevice:I

    if-eqz v0, :cond_b

    move v6, v0

    goto :goto_1

    .line 722
    :cond_b
    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v7}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v7}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v7, v8, :cond_c

    const/4 v6, 0x4

    goto :goto_1

    .line 724
    :cond_c
    iget-boolean v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mHasWiredHeadset:Z

    if-eqz v7, :cond_d

    const/4 v6, 0x1

    .line 728
    :cond_d
    :goto_1
    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v7}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v7}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne v7, v8, :cond_f

    :cond_e
    if-eqz v6, :cond_f

    if-eq v6, v5, :cond_f

    const/4 v7, 0x1

    goto :goto_2

    :cond_f
    const/4 v7, 0x0

    .line 731
    :goto_2
    iget-object v8, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v8}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v8

    sget-object v9, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne v8, v9, :cond_11

    if-eqz v6, :cond_10

    if-ne v6, v5, :cond_11

    :cond_10
    const/4 v8, 0x1

    goto :goto_3

    :cond_11
    const/4 v8, 0x0

    .line 734
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth audio: start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", stop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    .line 736
    invoke-virtual {v10}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", userSelectedRet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    if-ne v6, v0, :cond_13

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_14

    .line 742
    invoke-direct {p0, v6}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->setAudioDeviceInternal(I)V

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new device status: available="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    new-array v10, v3, [Ljava/lang/Integer;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    invoke-static {v9}, Lcom/netease/yunxin/lite/util/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v9

    invoke-static {v9}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , selected="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {v6}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v7, :cond_15

    .line 748
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->stopScoAudio()V

    .line 749
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->updateDevice()V

    .line 752
    :cond_15
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    if-nez v1, :cond_16

    if-eqz v8, :cond_17

    .line 753
    :cond_16
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mBluetoothManager:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->startScoAudio()Z

    move-result v1

    if-nez v1, :cond_17

    .line 754
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_17
    if-ne v6, v5, :cond_18

    .line 758
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->bluetoothTryReconnect:Z

    if-eqz v1, :cond_18

    const/4 v3, 0x1

    :cond_18
    if-nez v0, :cond_19

    if-eqz v3, :cond_1a

    .line 760
    :cond_19
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    if-eqz v0, :cond_1a

    .line 761
    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mSelectedAudioDevice:I

    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->mAudioDevices:Ljava/util/Set;

    invoke-direct {p0, v6}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->hasExternalMic(I)Z

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;->onAudioDeviceChanged(ILjava/util/Set;Z)V

    :cond_1a
    const-string v0, "updateAudioDeviceState done"

    .line 764
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
