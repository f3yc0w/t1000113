.class public final enum Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;
.super Ljava/lang/Enum;
.source "LiteSDKLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiteSDKLiveStreamAudioCodecProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

.field public static final enum LiteSDKLiveStreamAudioCodecProfileHEAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

.field public static final enum LiteSDKLiveStreamAudioCodecProfileLCAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;


# instance fields
.field private final codecProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    new-instance v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    const-string v1, "LiteSDKLiveStreamAudioCodecProfileLCAAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->LiteSDKLiveStreamAudioCodecProfileLCAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    .line 54
    new-instance v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    const-string v3, "LiteSDKLiveStreamAudioCodecProfileHEAAC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->LiteSDKLiveStreamAudioCodecProfileHEAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 44
    sput-object v3, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->codecProfile:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    const-class v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;
    .locals 1

    .line 44
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->$VALUES:[Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    return-object v0
.end method


# virtual methods
.method public codecProfile()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->codecProfile:I

    return v0
.end method
