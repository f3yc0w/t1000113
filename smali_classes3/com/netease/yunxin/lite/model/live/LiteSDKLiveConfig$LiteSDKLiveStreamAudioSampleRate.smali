.class public final enum Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;
.super Ljava/lang/Enum;
.source "LiteSDKLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiteSDKLiveStreamAudioSampleRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

.field public static final enum LiteSDKLiveStreamAudioSampleRate32000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

.field public static final enum LiteSDKLiveStreamAudioSampleRate44100:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

.field public static final enum LiteSDKLiveStreamAudioSampleRate48000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;


# instance fields
.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    const-string v1, "LiteSDKLiveStreamAudioSampleRate32000"

    const/4 v2, 0x0

    const/16 v3, 0x7d00

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate32000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    .line 23
    new-instance v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    const-string v3, "LiteSDKLiveStreamAudioSampleRate44100"

    const/4 v4, 0x1

    const v5, 0xac44

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate44100:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    .line 28
    new-instance v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    const-string v5, "LiteSDKLiveStreamAudioSampleRate48000"

    const/4 v6, 0x2

    const v7, 0xbb80

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate48000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 13
    sput-object v5, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

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
            "sampleRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->sampleRate:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;
    .locals 1

    .line 13
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    return-object v0
.end method


# virtual methods
.method public sampleRate()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->sampleRate:I

    return v0
.end method
