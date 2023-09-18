.class final enum Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;
.super Ljava/lang/Enum;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

.field public static final enum RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

.field public static final enum UNINITIALIZED:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    .line 65
    new-instance v1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->RUNNING:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 63
    sput-object v3, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->$VALUES:[Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 63
    const-class v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;
    .locals 1

    .line 63
    sget-object v0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->$VALUES:[Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerState;

    return-object v0
.end method
