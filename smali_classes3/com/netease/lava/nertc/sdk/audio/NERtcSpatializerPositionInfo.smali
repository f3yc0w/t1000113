.class public Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;
.super Ljava/lang/Object;
.source "NERtcSpatializerPositionInfo.java"


# instance fields
.field public mHeadPosition:[F

.field public mHeadQuaternion:[F

.field public mSpeakerPosition:[F

.field public mSpeakerQuaternion:[F


# direct methods
.method public constructor <init>([F[F[F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "speakerPosition",
            "speakerQuaternion",
            "headPosition",
            "headQuaternion"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mSpeakerPosition:[F

    .line 22
    iput-object p2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mSpeakerQuaternion:[F

    .line 23
    iput-object p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mHeadPosition:[F

    .line 24
    iput-object p4, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mHeadQuaternion:[F

    return-void
.end method
