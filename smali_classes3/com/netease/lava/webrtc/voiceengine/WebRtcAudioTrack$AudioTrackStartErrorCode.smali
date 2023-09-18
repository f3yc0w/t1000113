.class public final enum Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;
.super Ljava/lang/Enum;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioTrackStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 94
    new-instance v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const-string v1, "AUDIO_TRACK_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    .line 95
    new-instance v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const-string v3, "AUDIO_TRACK_START_STATE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 93
    sput-object v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->$VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;
    .locals 1

    .line 93
    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;
    .locals 1

    .line 93
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->$VALUES:[Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-object v0
.end method
