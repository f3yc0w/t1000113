.class public final Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

.field private final context:Landroid/content/Context;

.field private final externalSurroundSoundSettingObserver:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 64
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;

    .line 65
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 66
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-static {}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 72
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    return-object p0
.end method

.method private onNewAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public register()Lcom/google/android/exoplr2avp/audio/AudioCapabilities;
    .locals 5

    .line 84
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->register()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 95
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object v0
.end method

.method public unregister()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->unregister()V

    :cond_2
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilitiesReceiver;->registered:Z

    return-void
.end method
