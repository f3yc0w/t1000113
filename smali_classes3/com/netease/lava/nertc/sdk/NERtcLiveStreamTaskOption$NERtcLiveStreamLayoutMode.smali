.class public final enum Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;
.super Ljava/lang/Enum;
.source "NERtcLiveStreamTaskOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcLiveStreamLayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutAudioOnly:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutCustom:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutFloatingLeftVertical:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutFloatingRightVertical:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutSplitScreen:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public static final enum layoutSplitScreenScaling:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v1, "layoutFloatingRightVertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutFloatingRightVertical:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    .line 23
    new-instance v1, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v3, "layoutFloatingLeftVertical"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutFloatingLeftVertical:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    .line 25
    new-instance v3, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v5, "layoutSplitScreen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutSplitScreen:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    .line 27
    new-instance v5, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v7, "layoutSplitScreenScaling"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutSplitScreenScaling:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    .line 29
    new-instance v7, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v9, "layoutCustom"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutCustom:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    .line 31
    new-instance v9, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-string v11, "layoutAudioOnly"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutAudioOnly:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 18
    sput-object v11, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;
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
    const-class v0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    return-object v0
.end method
