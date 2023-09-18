.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;
.super Ljava/lang/Enum;
.source "NERtcRemoteVideoStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

.field public static final enum kNERtcRemoteVideoStreamTypeHigh:Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

.field public static final enum kNERtcRemoteVideoStreamTypeLow:Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    const-string v1, "kNERtcRemoteVideoStreamTypeHigh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->kNERtcRemoteVideoStreamTypeHigh:Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    .line 28
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    const-string v3, "kNERtcRemoteVideoStreamTypeLow"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->kNERtcRemoteVideoStreamTypeLow:Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;
    .locals 1

    .line 8
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;

    return-object v0
.end method
