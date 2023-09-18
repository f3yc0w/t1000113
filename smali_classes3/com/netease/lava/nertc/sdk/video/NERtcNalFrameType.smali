.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;
.super Ljava/lang/Enum;
.source "NERtcNalFrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

.field public static final enum NAL_FRAME_TYPE_I:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

.field public static final enum NAL_FRAME_TYPE_IDR:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

.field public static final enum NAL_FRAME_TYPE_P:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;


# instance fields
.field public final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    const-string v1, "NAL_FRAME_TYPE_IDR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_IDR:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    .line 15
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    const-string v4, "NAL_FRAME_TYPE_I"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_I:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    .line 20
    new-instance v4, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    const-string v6, "NAL_FRAME_TYPE_P"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_P:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    new-array v6, v7, [Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 6
    sput-object v6, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "intValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    return-object v0
.end method
