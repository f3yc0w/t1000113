.class public final enum Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;
.super Ljava/lang/Enum;
.source "NERtcLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcLiveStreamAudioCodecProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

.field public static final enum NERtcLiveStreamAudioCodecProfileHEAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

.field public static final enum NERtcLiveStreamAudioCodecProfileLCAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;


# instance fields
.field private final codecProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 88
    new-instance v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    const-string v1, "NERtcLiveStreamAudioCodecProfileLCAAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->NERtcLiveStreamAudioCodecProfileLCAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    .line 98
    new-instance v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    const-string v3, "NERtcLiveStreamAudioCodecProfileHEAAC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->NERtcLiveStreamAudioCodecProfileHEAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 78
    sput-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

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
            "codecProfile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->codecProfile:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 78
    const-class v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;
    .locals 1

    .line 78
    sget-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->$VALUES:[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    return-object v0
.end method


# virtual methods
.method public codecProfile()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->codecProfile:I

    return v0
.end method
