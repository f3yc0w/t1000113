.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsVideoSend.java"


# instance fields
.field public videoLayersSendStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVideoLayersSendStats([Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoLayersSendStats"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;->videoLayersSendStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;

    return-void
.end method
