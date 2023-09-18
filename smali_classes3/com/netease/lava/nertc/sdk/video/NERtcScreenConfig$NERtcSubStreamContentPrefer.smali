.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;
.super Ljava/lang/Enum;
.source "NERtcScreenConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcSubStreamContentPrefer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

.field public static final enum CONTENT_PREFER_DETAILS:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

.field public static final enum CONTENT_PREFER_MOTION:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    const-string v1, "CONTENT_PREFER_MOTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->CONTENT_PREFER_MOTION:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    .line 44
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    const-string v3, "CONTENT_PREFER_DETAILS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->CONTENT_PREFER_DETAILS:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 18
    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    return-object v0
.end method
