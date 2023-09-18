.class public Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;
.super Ljava/lang/Object;
.source "LiteSDKLiveStreamImageInfo.java"


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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->width:I

    .line 43
    iput v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->height:I

    .line 50
    iput v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->zOrder:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->y:I

    return v0
.end method

.method public getzOrder()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->zOrder:I

    return v0
.end method
