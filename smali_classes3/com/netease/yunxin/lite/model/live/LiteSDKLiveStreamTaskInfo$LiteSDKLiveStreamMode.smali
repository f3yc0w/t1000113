.class public final enum Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;
.super Ljava/lang/Enum;
.source "LiteSDKLiveStreamTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiteSDKLiveStreamMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

.field public static final enum kLiteSDKLsModeAudio:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

.field public static final enum kLiteSDKLsModeVideo:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    const-string v1, "kLiteSDKLsModeVideo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->kLiteSDKLsModeVideo:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    .line 46
    new-instance v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    const-string v3, "kLiteSDKLsModeAudio"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->kLiteSDKLsModeAudio:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 35
    sput-object v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo$LiteSDKLiveStreamMode;

    return-object v0
.end method
