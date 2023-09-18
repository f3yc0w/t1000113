.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;
.super Ljava/lang/Enum;
.source "NERtcCameraCaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcCaptureExtraRotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

.field public static final enum CAPTURE_EXTRA_ROTATION_180:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

.field public static final enum CAPTURE_EXTRA_ROTATION_ANTICLOCKWISE_90:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

.field public static final enum CAPTURE_EXTRA_ROTATION_CLOCKWISE_90:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

.field public static final enum CAPTURE_EXTRA_ROTATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 82
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    const-string v1, "CAPTURE_EXTRA_ROTATION_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->CAPTURE_EXTRA_ROTATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    .line 93
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    const-string v3, "CAPTURE_EXTRA_ROTATION_CLOCKWISE_90"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->CAPTURE_EXTRA_ROTATION_CLOCKWISE_90:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    .line 104
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    const-string v5, "CAPTURE_EXTRA_ROTATION_180"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->CAPTURE_EXTRA_ROTATION_180:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    .line 115
    new-instance v5, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    const-string v7, "CAPTURE_EXTRA_ROTATION_ANTICLOCKWISE_90"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->CAPTURE_EXTRA_ROTATION_ANTICLOCKWISE_90:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 71
    sput-object v7, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 71
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;
    .locals 1

    .line 71
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    return-object v0
.end method
