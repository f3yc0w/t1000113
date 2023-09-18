.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;
.super Ljava/lang/Enum;
.source "NERtcVideoStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

.field public static final enum kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

.field public static final enum kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    const-string v1, "kNERtcVideoStreamTypeMain"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    .line 35
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    const-string v3, "kNERtcVideoStreamTypeSub"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 15
    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    return-object v0
.end method
