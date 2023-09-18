.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onRemoteAudioVolumeIndication$32(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V

    return-void
.end method
