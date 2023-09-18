.class public final enum Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;
.super Ljava/lang/Enum;
.source "NERtcLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcLiveStreamAudioSampleRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

.field public static final enum NERtcLiveStreamAudioSampleRate32000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

.field public static final enum NERtcLiveStreamAudioSampleRate44100:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

.field public static final enum NERtcLiveStreamAudioSampleRate48000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;


# instance fields
.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    const-string v1, "NERtcLiveStreamAudioSampleRate32000"

    const/4 v2, 0x0

    const/16 v3, 0x7d00

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate32000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    .line 39
    new-instance v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    const-string v3, "NERtcLiveStreamAudioSampleRate44100"

    const/4 v4, 0x1

    const v5, 0xac44

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate44100:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    .line 49
    new-instance v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    const-string v5, "NERtcLiveStreamAudioSampleRate48000"

    const/4 v6, 0x2

    const v7, 0xbb80

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate48000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 19
    sput-object v5, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->sampleRate:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 19
    const-class v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    return-object v0
.end method


# virtual methods
.method public sampleRate()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->sampleRate:I

    return v0
.end method
