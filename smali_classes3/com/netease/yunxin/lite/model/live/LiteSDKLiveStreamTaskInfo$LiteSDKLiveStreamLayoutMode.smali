.class public final enum Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;
.super Ljava/lang/Enum;
.source "LiteSDKLiveStreamTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiteSDKLiveStreamLayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutAudioOnly:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutCustom:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutFloatingLeftVertical:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutFloatingRightVertical:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutSplitScreen:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutSplitScreenScaling:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

.field public static final enum layoutSubscribe:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v1, "layoutFloatingRightVertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutFloatingRightVertical:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 19
    new-instance v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v3, "layoutFloatingLeftVertical"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutFloatingLeftVertical:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 21
    new-instance v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v5, "layoutSplitScreen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutSplitScreen:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 23
    new-instance v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v7, "layoutSplitScreenScaling"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutSplitScreenScaling:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 25
    new-instance v7, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v9, "layoutCustom"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutCustom:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 27
    new-instance v9, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v11, "layoutAudioOnly"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutAudioOnly:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    .line 29
    new-instance v11, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const-string v13, "layoutSubscribe"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->layoutSubscribe:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 15
    sput-object v13, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;
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
    const-class v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamLayoutMode;

    return-object v0
.end method
