.class public final enum Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;
.super Ljava/lang/Enum;
.source "NERtcLiveStreamUserTranscoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcLiveStreamVideoScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

.field public static final enum kNERtcLsModeVideoScaleCropFill:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

.field public static final enum kNERtcLsModeVideoScaleFit:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    const-string v1, "kNERtcLsModeVideoScaleFit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->kNERtcLsModeVideoScaleFit:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    .line 32
    new-instance v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    const-string v3, "kNERtcLsModeVideoScaleCropFill"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->kNERtcLsModeVideoScaleCropFill:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 12
    sput-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;
    .locals 1

    .line 12
    sget-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    return-object v0
.end method
