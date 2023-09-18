.class public final enum Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;
.super Ljava/lang/Enum;
.source "WebRtcAudioLoopBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioLoopBackStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

.field public static final enum AUDIO_RECORD_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

.field public static final enum AUDIO_RECORD_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 87
    new-instance v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    const-string v1, "AUDIO_RECORD_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    .line 88
    new-instance v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    const-string v3, "AUDIO_RECORD_START_STATE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 86
    sput-object v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;->$VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;
    .locals 1

    .line 86
    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;
    .locals 1

    .line 86
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;->$VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;

    return-object v0
.end method
