.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;
.super Ljava/lang/Enum;
.source "NERtcVideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcVideoOutputOrientationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

.field public static final enum VIDEO_OUTPUT_ORIENTATION_MODE_ADAPTATIVE:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

.field public static final enum VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_LANDSCAPE:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

.field public static final enum VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_PORTRAIT:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 87
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    const-string v1, "VIDEO_OUTPUT_ORIENTATION_MODE_ADAPTATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->VIDEO_OUTPUT_ORIENTATION_MODE_ADAPTATIVE:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    .line 101
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    const-string v3, "VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_LANDSCAPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_LANDSCAPE:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    .line 114
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    const-string v5, "VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_PORTRAIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->VIDEO_OUTPUT_ORIENTATION_MODE_FIXED_PORTRAIT:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 71
    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;
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
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;
    .locals 1

    .line 71
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    return-object v0
.end method