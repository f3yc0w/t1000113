.class public Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;
.super Ljava/lang/Object;
.source "LiteSDKLiveStreamUserTranscoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;
    }
.end annotation


# instance fields
.field public adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->uid:J

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->videoPush:Z

    .line 47
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->audioPush:Z

    .line 53
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleFit:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    iput-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    return-void
.end method


# virtual methods
.method public getAdaption()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->height:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->uid:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->y:I

    return v0
.end method

.method public getzOrder()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->zOrder:I

    return v0
.end method

.method public isAudioPush()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->audioPush:Z

    return v0
.end method

.method public isVideoPush()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->videoPush:Z

    return v0
.end method
