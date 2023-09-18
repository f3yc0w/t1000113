.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;
.super Ljava/lang/Enum;
.source "NERtcAudioEncodedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcAudioPayLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

.field public static final enum AUDIO_PAY_LOAD_TYPE_OPUS:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;


# instance fields
.field public final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    const-string v1, "AUDIO_PAY_LOAD_TYPE_OPUS"

    const/4 v2, 0x0

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->AUDIO_PAY_LOAD_TYPE_OPUS:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    aput-object v0, v1, v2

    .line 11
    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

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
            "intValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;
    .locals 1

    .line 11
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    return-object v0
.end method
