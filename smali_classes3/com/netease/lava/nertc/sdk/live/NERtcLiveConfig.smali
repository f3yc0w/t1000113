.class public Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;
.super Ljava/lang/Object;
.source "NERtcLiveConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;,
        Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;
    }
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioCodecProfile:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

.field public channels:I

.field public interruptedPlaceImage:Z

.field public sampleRate:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

.field public singleVideoPassThrough:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
