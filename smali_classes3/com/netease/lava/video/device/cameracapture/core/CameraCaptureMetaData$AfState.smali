.class public final enum Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AfState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum LOCKED_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum LOCKED_NOT_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum PASSIVE_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum PASSIVE_NOT_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum SCANNING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

.field public static final enum UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 50
    new-instance v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 53
    new-instance v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 56
    new-instance v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v5, "SCANNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->SCANNING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 59
    new-instance v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v7, "PASSIVE_FOCUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->PASSIVE_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 62
    new-instance v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v9, "PASSIVE_NOT_FOCUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->PASSIVE_NOT_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 65
    new-instance v9, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v11, "LOCKED_FOCUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    .line 68
    new-instance v11, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const-string v13, "LOCKED_NOT_FOCUSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 47
    sput-object v13, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;
    .locals 1

    .line 47
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->$VALUES:[Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    invoke-virtual {v0}, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0
.end method
