.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;
.super Ljava/lang/Enum;
.source "NERtcEncodeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcVideoFrameRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_10:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_15:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_24:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_30:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_7:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public static final enum FRAME_RATE_FPS_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 82
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v1, "FRAME_RATE_FPS_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    .line 91
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v3, "FRAME_RATE_FPS_7"

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_7:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    .line 100
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v5, "FRAME_RATE_FPS_10"

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_10:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    .line 109
    new-instance v5, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v7, "FRAME_RATE_FPS_15"

    const/4 v8, 0x3

    const/16 v9, 0xf

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_15:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    .line 118
    new-instance v7, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v9, "FRAME_RATE_FPS_24"

    const/4 v10, 0x4

    const/16 v11, 0x18

    invoke-direct {v7, v9, v10, v11}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_24:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    .line 127
    new-instance v9, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const-string v11, "FRAME_RATE_FPS_30"

    const/4 v12, 0x5

    const/16 v13, 0x1e

    invoke-direct {v9, v11, v12, v13}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_30:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 73
    sput-object v11, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 73
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;
    .locals 1

    .line 73
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->value:I

    return v0
.end method
