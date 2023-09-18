.class public Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;
.super Ljava/lang/Object;
.source "LiteSDKLiveStreamLayout.java"


# instance fields
.field public backgroundColor:I

.field public backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

.field public height:I

.field public userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 31
    iput v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundColor:I

    return v0
.end method

.method public getBackgroundImgArray()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->height:I

    return v0
.end method

.method public getUserTranscodingArray()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->width:I

    return v0
.end method
