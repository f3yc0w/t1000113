.class public Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;
.super Ljava/lang/Object;
.source "MediaProjectionCallback.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;
.implements Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentUseCount:I

.field private mMediaProjection:Landroid/media/projection/MediaProjection;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaProjectionCallback"

    .line 18
    iput-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create  MediaProjectionCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private createMediaProjection()V
    .locals 3

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    const/4 v1, -0x1

    .line 78
    iget-object v2, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    :cond_0
    return-void
.end method

.method private getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    .line 64
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->createMediaProjection()V

    .line 65
    iget-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method private stopMediaProjection()V
    .locals 1

    .line 69
    iget v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    .line 70
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->stopMediaProjectionIfNeed()V

    return-void
.end method

.method private stopMediaProjectionIfNeed()V
    .locals 2

    const-string v0, "MediaProjectionCallback"

    const-string v1, "stopMediaProjectionIfNeed"

    .line 84
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v1, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_1

    const-string v1, "stopMediaProjectionIfNeed count<=0 so stop mediaProjection"

    .line 86
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    :cond_1
    return-void
.end method


# virtual methods
.method public onScreenCapturerNeedIntent()Landroid/media/projection/MediaProjection;
    .locals 2

    const-string v0, "MediaProjectionCallback"

    const-string v1, "onScreenCapturerNeedIntent"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    return-object v0
.end method

.method public onWebRtcAudioLoopBackNeedIntent()Landroid/media/projection/MediaProjection;
    .locals 2

    const-string v0, "MediaProjectionCallback"

    const-string v1, "onWebRtcAudioLoopBackNeedIntent"

    .line 40
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    return-object v0
.end method

.method public stopAudioLoopBack()V
    .locals 2

    const-string v0, "MediaProjectionCallback"

    const-string v1, "stopAudioLoopBack"

    .line 46
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->stopMediaProjection()V

    return-void
.end method

.method public stopScreenCapture()V
    .locals 2

    const-string v0, "MediaProjectionCallback"

    const-string v1, "stopScreenCapture"

    .line 58
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->stopMediaProjection()V

    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProjectionCallback"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntent:Landroid/content/Intent;

    if-eq v0, p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->mIntentUseCount:I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIntent intent is change, update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
