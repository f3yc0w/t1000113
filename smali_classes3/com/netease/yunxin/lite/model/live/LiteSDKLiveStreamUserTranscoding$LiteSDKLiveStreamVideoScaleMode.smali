.class public final enum Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;
.super Ljava/lang/Enum;
.source "LiteSDKLiveStreamUserTranscoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiteSDKLiveStreamVideoScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

.field public static final enum kLiteSDKLsModeVideoScaleCropFill:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

.field public static final enum kLiteSDKLsModeVideoScaleFit:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    const-string v1, "kLiteSDKLsModeVideoScaleFit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleFit:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    .line 22
    new-instance v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    const-string v3, "kLiteSDKLsModeVideoScaleCropFill"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->kLiteSDKLsModeVideoScaleCropFill:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 12
    sput-object v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;
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
    const-class v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;
    .locals 1

    .line 12
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamUserTranscoding$LiteSDKLiveStreamVideoScaleMode;

    return-object v0
.end method
