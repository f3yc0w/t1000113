.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioSend;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsAudioSend.java"


# instance fields
.field public audioLayerSendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAudioLayerSendList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioLayerSendList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioSend;->audioLayerSendList:Ljava/util/List;

    return-void
.end method
