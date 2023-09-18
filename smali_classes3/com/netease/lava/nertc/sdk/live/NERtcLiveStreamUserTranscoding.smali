.class public Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;
.super Ljava/lang/Object;
.source "NERtcLiveStreamUserTranscoding.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;
    }
.end annotation


# instance fields
.field public adaption:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

.field public audioPush:Z

.field public height:I

.field public uid:J

.field public videoPush:Z

.field public width:I

.field public x:I

.field public y:I

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->uid:J

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->videoPush:Z

    .line 76
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->audioPush:Z

    .line 87
    sget-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->kNERtcLsModeVideoScaleFit:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->adaption:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    return-void
.end method
