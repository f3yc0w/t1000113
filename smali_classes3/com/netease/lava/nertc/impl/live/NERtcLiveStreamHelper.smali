.class public Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper;
.super Ljava/lang/Object;
.source "NERtcLiveStreamHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcLiveStreamHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLiveStreamTaskInfo(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "NERtcLiveStreamHelper"

    if-nez p0, :cond_0

    const-string p0, "convertLiveStreamTaskInfo: task info is null"

    .line 19
    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 23
    :cond_0
    new-instance v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;

    invoke-direct {v2}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;-><init>()V

    .line 24
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->taskId:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->taskId:Ljava/lang/String;

    .line 25
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->url:Ljava/lang/String;

    .line 26
    iget-boolean v3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->serverRecordEnabled:Z

    iput-boolean v3, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->serverRecordEnabled:Z

    .line 27
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->liveMode:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    if-nez v3, :cond_1

    const-string p0, "convertLiveStreamTaskInfo: liveMode is null"

    .line 28
    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 31
    :cond_1
    sget-object v0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamTaskInfo$NERtcLiveStreamMode:[I

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->liveMode:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->kLiteSDKLsModeVideo:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    iput-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->liveMode:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->kLiteSDKLsModeAudio:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    iput-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->liveMode:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    if-eqz v0, :cond_9

    .line 42
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;-><init>()V

    iput-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    .line 43
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->width:I

    iput v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->width:I

    .line 44
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->height:I

    iput v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->height:I

    .line 45
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    iput v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundColor:I

    .line 46
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImgList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    const/4 v0, 0x0

    .line 48
    :goto_1
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 49
    new-instance v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    invoke-direct {v5}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;-><init>()V

    .line 50
    iget-object v6, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v6, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImgList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    .line 51
    iget-object v7, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->url:Ljava/lang/String;

    iput-object v7, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->url:Ljava/lang/String;

    .line 52
    iget v7, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->x:I

    iput v7, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->x:I

    .line 53
    iget v7, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->y:I

    iput v7, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->y:I

    .line 54
    iget v7, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->width:I

    iput v7, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->width:I

    .line 55
    iget v7, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->height:I

    iput v7, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->height:I

    .line 56
    iget v6, v6, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->zOrder:I

    iput v6, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->zOrder:I

    .line 57
    iget-object v6, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v6, v6, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    new-array v5, v3, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    .line 61
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;-><init>()V

    .line 62
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->url:Ljava/lang/String;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->url:Ljava/lang/String;

    .line 63
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->x:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->x:I

    .line 64
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->y:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->y:I

    .line 65
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->width:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->width:I

    .line 66
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;->height:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;->height:I

    .line 67
    iget-object v5, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->backgroundImgArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamImageInfo;

    aput-object v0, v5, v4

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    .line 71
    :goto_2
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    array-length v0, v0

    if-ge v4, v0, :cond_9

    .line 72
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    new-instance v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    invoke-direct {v5}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;-><init>()V

    aput-object v5, v0, v4

    .line 73
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget-wide v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->uid:J

    iput-wide v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->uid:J

    .line 74
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget-boolean v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->videoPush:Z

    iput-boolean v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->videoPush:Z

    .line 75
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget-boolean v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->audioPush:Z

    iput-boolean v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->audioPush:Z

    .line 76
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    sget-object v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleFit:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    .line 77
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->adaption:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    if-eqz v0, :cond_8

    .line 78
    sget-object v0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode:[I

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->adaption:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    invoke-virtual {v5}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 83
    :cond_6
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    sget-object v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleCropFill:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    goto :goto_3

    .line 80
    :cond_7
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    sget-object v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleFit:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    iput-object v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->adaption:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    .line 89
    :cond_8
    :goto_3
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->x:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->x:I

    .line 90
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->y:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->y:I

    .line 91
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->width:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->width:I

    .line 92
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->height:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->height:I

    .line 93
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;->userTranscodingArray:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->userTranscodingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;

    iget v5, v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;->zOrder:I

    iput v5, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;->zOrder:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    if-eqz v0, :cond_11

    .line 98
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;-><init>()V

    iput-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    .line 99
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-boolean v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->singleVideoPassThrough:Z

    iput-boolean v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->singleVideoPassThrough:Z

    .line 100
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->audioBitrate:I

    iput v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioBitrate:I

    .line 101
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->sampleRate:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    if-eqz v0, :cond_d

    .line 102
    sget-object v0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioSampleRate:[I

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-object v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->sampleRate:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    goto :goto_4

    .line 110
    :cond_a
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    sget-object v4, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate48000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    iput-object v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    goto :goto_4

    .line 107
    :cond_b
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    sget-object v4, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate44100:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    iput-object v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    goto :goto_4

    .line 104
    :cond_c
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    sget-object v4, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate32000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    iput-object v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    .line 116
    :cond_d
    :goto_4
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->channels:I

    iput v4, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->channels:I

    .line 117
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->audioCodecProfile:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    if-eqz v0, :cond_10

    .line 118
    sget-object v0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile:[I

    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-object v4, v4, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->audioCodecProfile:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_f

    if-eq v0, v1, :cond_e

    goto :goto_5

    .line 123
    :cond_e
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    sget-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->LiteSDKLiveStreamAudioCodecProfileHEAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioCodecProfile:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    goto :goto_5

    .line 120
    :cond_f
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    sget-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->LiteSDKLiveStreamAudioCodecProfileLCAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioCodecProfile:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    .line 130
    :cond_10
    :goto_5
    iget-object v0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

    iget-boolean v1, v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;->interruptedPlaceImage:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->interruptedPlaceImage:Z

    .line 132
    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->extraInfo:Ljava/lang/String;

    iput-object p0, v2, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->extraInfo:Ljava/lang/String;

    :cond_11
    return-object v2
.end method
