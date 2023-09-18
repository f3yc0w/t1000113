.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsAudioRecv.java"


# instance fields
.field public audioLayerRecvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;",
            ">;"
        }
    .end annotation
.end field

.field public userId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;->userId:J

    return-void
.end method


# virtual methods
.method public setAudioLayerRecvList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioLayerRecvList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;->audioLayerRecvList:Ljava/util/List;

    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 21
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;->userId:J

    return-void
.end method
