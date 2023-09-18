.class public final enum Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum FLASH_REQUIRED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum SEARCHING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

.field public static final enum UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 75
    new-instance v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    .line 78
    new-instance v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    .line 81
    new-instance v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v5, "SEARCHING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->SEARCHING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    .line 87
    new-instance v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v7, "FLASH_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    .line 90
    new-instance v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v9, "CONVERGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    .line 93
    new-instance v9, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const-string v11, "LOCKED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 72
    sput-object v11, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 72
    const-class v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;
    .locals 1

    .line 72
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    invoke-virtual {v0}, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0
.end method
