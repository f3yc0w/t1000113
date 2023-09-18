.class public final enum Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AwbState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

.field public static final enum CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

.field public static final enum INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

.field public static final enum LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

.field public static final enum METERING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

.field public static final enum UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 100
    new-instance v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    .line 103
    new-instance v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    .line 106
    new-instance v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const-string v5, "METERING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->METERING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    .line 109
    new-instance v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const-string v7, "CONVERGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    .line 112
    new-instance v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const-string v9, "LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 97
    sput-object v9, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

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

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 97
    const-class v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;
    .locals 1

    .line 97
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    invoke-virtual {v0}, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0
.end method
