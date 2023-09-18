.class final enum Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
.super Ljava/lang/Enum;
.source "CameraCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

.field public static final enum IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

.field public static final enum IN_PROGRESS:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

.field public static final enum PENDING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 31
    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    const-string v3, "PENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->PENDING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 32
    new-instance v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    const-string v5, "IN_PROGRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 29
    sput-object v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    return-object v0
.end method
