.class public Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;
.super Ljava/lang/Object;
.source "LiteSDKProbeResult.java"


# instance fields
.field public downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

.field public rtt:J

.field public type:I

.field public upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->type:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->rtt:J

    return-void
.end method


# virtual methods
.method public setDownLinkResult(Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLinkResult"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    return-void
.end method

.method public setRtt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtt"
        }
    .end annotation

    .line 26
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->rtt:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 21
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->type:I

    return-void
.end method

.method public setUpLinkResult(Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upLinkResult"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    return-void
.end method
