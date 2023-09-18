.class public Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;
.super Ljava/lang/Object;
.source "NERtcLiveStreamImageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public height:I

.field public url:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->width:I

    .line 79
    iput v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->height:I

    .line 90
    iput v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->zOrder:I

    return-void
.end method
