.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;
.super Ljava/lang/Enum;
.source "NERtcVideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcVideoMirrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

.field public static final enum VIDEO_MIRROR_MODE_AUTO:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

.field public static final enum VIDEO_MIRROR_MODE_DISABLED:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

.field public static final enum VIDEO_MIRROR_MODE_ENABLED:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    const-string v1, "VIDEO_MIRROR_MODE_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->VIDEO_MIRROR_MODE_AUTO:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    .line 48
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    const-string v3, "VIDEO_MIRROR_MODE_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->VIDEO_MIRROR_MODE_ENABLED:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    .line 59
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    const-string v5, "VIDEO_MIRROR_MODE_DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->VIDEO_MIRROR_MODE_DISABLED:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 28
    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    return-object v0
.end method
