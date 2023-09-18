.class public Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;
.super Ljava/lang/Object;
.source "LiteSDKAudioVolumeInfo.java"


# instance fields
.field public subStreamVolume:I

.field public uid:I

.field public volume:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->uid:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->volume:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->subStreamVolume:I

    return-void
.end method


# virtual methods
.method public setSubStreamVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subStreamVolume"
        }
    .end annotation

    .line 29
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->subStreamVolume:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 19
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->uid:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 24
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->volume:I

    return-void
.end method
