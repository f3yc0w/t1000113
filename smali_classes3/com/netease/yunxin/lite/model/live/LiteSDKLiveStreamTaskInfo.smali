.class public Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;
.super Ljava/lang/Object;
.source "LiteSDKLiveStreamTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;,
        Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;
    }
.end annotation


# instance fields
.field public config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

.field public extraInfo:Ljava/lang/String;

.field public layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

.field public liveMode:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

.field public serverRecordEnabled:Z

.field public taskId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->serverRecordEnabled:Z

    .line 69
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->kLiteSDKLsModeVideo:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    iput-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->liveMode:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->config:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->layout:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamLayout;

    return-object v0
.end method

.method public getLiveMode()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->liveMode:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isServerRecordEnabled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;->serverRecordEnabled:Z

    return v0
.end method
