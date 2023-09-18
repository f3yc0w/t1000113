.class public final enum Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;
.super Ljava/lang/Enum;
.source "NERtcVideoWatermarkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WatermarkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

.field public static final enum kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

.field public static final enum kNERtcWatermarkTypeText:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

.field public static final enum kNERtcWatermarkTypeTimestamp:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    const-string v1, "kNERtcWatermarkTypeImage"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    .line 27
    new-instance v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    const-string v3, "kNERtcWatermarkTypeText"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeText:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    .line 28
    new-instance v3, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    const-string v5, "kNERtcWatermarkTypeTimestamp"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeTimestamp:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 25
    sput-object v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->$VALUES:[Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 25
    const-class v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;
    .locals 1

    .line 25
    sget-object v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->$VALUES:[Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    return-object v0
.end method
