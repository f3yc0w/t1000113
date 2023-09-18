.class synthetic Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;
.super Ljava/lang/Object;
.source "NERtcLiveStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioSampleRate:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamTaskInfo$NERtcLiveStreamMode:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 118
    invoke-static {}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->NERtcLiveStreamAudioCodecProfileLCAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile:[I

    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->NERtcLiveStreamAudioCodecProfileHEAAC:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioCodecProfile;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :catch_1
    invoke-static {}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioSampleRate:[I

    :try_start_2
    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate32000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioSampleRate:[I

    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate44100:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveConfig$NERtcLiveStreamAudioSampleRate:[I

    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->NERtcLiveStreamAudioSampleRate48000:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig$NERtcLiveStreamAudioSampleRate;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 78
    :catch_4
    invoke-static {}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode:[I

    :try_start_5
    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->kNERtcLsModeVideoScaleFit:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode:[I

    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->kNERtcLsModeVideoScaleCropFill:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding$NERtcLiveStreamVideoScaleMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 31
    :catch_6
    invoke-static {}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->values()[Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamTaskInfo$NERtcLiveStreamMode:[I

    :try_start_7
    sget-object v3, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->kNERtcLsModeAudio:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$live$NERtcLiveStreamTaskInfo$NERtcLiveStreamMode:[I

    sget-object v2, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->kNERtcLsModeVideo:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
