.class public final enum Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;
.super Ljava/lang/Enum;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraStabilizationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field public static final enum STABILIZATION_ALL_OFF:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field public static final enum STABILIZATION_ALL_ON:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field public static final enum STABILIZATION_OPTICAL:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field public static final enum STABILIZATION_SOFTWARE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field public static final enum STABILIZATION_UNDEFINED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 69
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const-string v1, "STABILIZATION_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_UNDEFINED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    .line 70
    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const-string v3, "STABILIZATION_ALL_OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_ALL_OFF:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    .line 71
    new-instance v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const-string v5, "STABILIZATION_OPTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_OPTICAL:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    .line 72
    new-instance v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const-string v7, "STABILIZATION_SOFTWARE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_SOFTWARE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    .line 73
    new-instance v7, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const-string v9, "STABILIZATION_ALL_ON"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_ALL_ON:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 68
    sput-object v9, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

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

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->values()[Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    sget-object p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->STABILIZATION_UNDEFINED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;
    .locals 1

    .line 68
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->value:I

    return v0
.end method
