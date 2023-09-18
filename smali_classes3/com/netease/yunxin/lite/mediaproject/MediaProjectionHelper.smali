.class public Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;
.super Ljava/lang/Object;
.source "MediaProjectionHelper.java"


# static fields
.field private static mCallback:Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->mCallback:Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;-><init>(Landroid/content/Intent;)V

    sput-object v0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->mCallback:Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;->updateIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static setIntentForAudioLoopback(Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "callback"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->setIntent(Landroid/content/Intent;)V

    .line 25
    sget-object p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->mCallback:Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;

    invoke-static {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->setIntentCallback(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;)V

    .line 26
    invoke-static {p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->setMediaProjectionCallback(Landroid/media/projection/MediaProjection$Callback;)V

    return-void
.end method

.method public static setIntentForScreen(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->setIntent(Landroid/content/Intent;)V

    .line 19
    sget-object p0, Lcom/netease/yunxin/lite/mediaproject/MediaProjectionHelper;->mCallback:Lcom/netease/yunxin/lite/mediaproject/MediaProjectionCallback;

    invoke-static {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->setIntentCallback(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;)V

    return-void
.end method
