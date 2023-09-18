.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;
.super Ljava/lang/Enum;
.source "NERtcAudioRecordingConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcAudioRecordingCycleTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public static final enum CYCLE_TIME_0:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public static final enum CYCLE_TIME_10:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public static final enum CYCLE_TIME_360:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public static final enum CYCLE_TIME_60:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public static final enum CYCLE_TIME_900:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 27
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const-string v1, "CYCLE_TIME_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->CYCLE_TIME_0:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    .line 32
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const-string v3, "CYCLE_TIME_10"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->CYCLE_TIME_10:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    .line 37
    new-instance v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const-string v5, "CYCLE_TIME_60"

    const/4 v6, 0x2

    const/16 v7, 0x3c

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->CYCLE_TIME_60:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    .line 42
    new-instance v5, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const-string v7, "CYCLE_TIME_360"

    const/4 v8, 0x3

    const/16 v9, 0x168

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->CYCLE_TIME_360:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    .line 47
    new-instance v7, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const-string v9, "CYCLE_TIME_900"

    const/4 v10, 0x4

    const/16 v11, 0x384

    invoke-direct {v7, v9, v10, v11}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->CYCLE_TIME_900:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 22
    sput-object v9, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 22
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->value:I

    return v0
.end method
