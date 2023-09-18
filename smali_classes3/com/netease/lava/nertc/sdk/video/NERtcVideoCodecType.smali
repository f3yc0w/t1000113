.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;
.super Ljava/lang/Enum;
.source "NERtcVideoCodecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

.field public static final enum VIDEO_CODEC_TYPE_H264:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;


# instance fields
.field public final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    const-string v1, "VIDEO_CODEC_TYPE_H264"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->VIDEO_CODEC_TYPE_H264:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    aput-object v0, v1, v2

    .line 6
    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;
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
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    return-object v0
.end method
