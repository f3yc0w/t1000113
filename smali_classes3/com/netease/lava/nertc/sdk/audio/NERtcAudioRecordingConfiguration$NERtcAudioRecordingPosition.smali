.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;
.super Ljava/lang/Enum;
.source "NERtcAudioRecordingConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcAudioRecordingPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

.field public static final enum MIXED_RECORDING_AND_PLAYBACK:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

.field public static final enum PLAYBACK:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

.field public static final enum RECORDING:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    const-string v1, "MIXED_RECORDING_AND_PLAYBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->MIXED_RECORDING_AND_PLAYBACK:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    .line 14
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    const-string v3, "RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->RECORDING:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    .line 19
    new-instance v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    const-string v5, "PLAYBACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->PLAYBACK:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 5
    sput-object v5, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;
    .locals 1

    .line 5
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    return-object v0
.end method
