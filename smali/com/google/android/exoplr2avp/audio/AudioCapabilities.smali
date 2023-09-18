.class public final Lcom/google/android/exoplr2avp/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/AudioCapabilities$Api29;
    }
.end annotation


# static fields
.field private static final ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

.field private static final DEFAULT_MAX_CHANNEL_COUNT:I = 0x8

.field private static final DEFAULT_SAMPLE_RATE_HZ:I = 0xbb80

.field private static final EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

.field private static final EXTERNAL_SURROUND_SOUND_KEY:Ljava/lang/String; = "external_surround_sound_enabled"


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 55
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 66
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const/4 v1, 0x5

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x12

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 145
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    .line 146
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    .line 150
    :goto_0
    iput p2, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private static deviceMaySetExternalSurroundSoundGlobalSetting()Z
    .locals 2

    .line 252
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;
    .locals 2

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;
    .locals 4

    .line 96
    invoke-static {}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_surround_sound_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 98
    sget-object p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object p0

    .line 104
    :cond_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    const/16 v3, 0x8

    if-lt v0, v2, :cond_2

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->isAutomotive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 105
    :cond_1
    new-instance p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 106
    invoke-static {}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities$Api29;->getDirectPlaybackSupportedEncodings()[I

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;-><init>([II)V

    return-object p0

    :cond_2
    if-eqz p1, :cond_4

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 108
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 111
    :cond_3
    new-instance p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const-string v0, "android.media.extra.ENCODINGS"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 113
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;-><init>([II)V

    return-object p0

    .line 109
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object p0
.end method

.method private static getChannelConfigForPassthrough(I)I
    .locals 2

    .line 272
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x6

    .line 286
    :cond_2
    :goto_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const/4 p0, 0x2

    .line 290
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p0

    return p0
.end method

.method static getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;
    .locals 1

    .line 123
    invoke-static {}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_surround_sound_enabled"

    .line 124
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getMaxSupportedChannelCountForPassthrough(II)I
    .locals 2

    .line 265
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 266
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities$Api29;->getMaxSupportedChannelCountForPassthrough(II)I

    move-result p0

    return p0

    .line 268
    :cond_0
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 232
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v3, p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    iget p1, p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 189
    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 196
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x7

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v2

    .line 204
    :cond_3
    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 212
    :cond_4
    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    .line 213
    iget v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    if-le p1, v1, :cond_7

    return-object v2

    .line 209
    :cond_5
    :goto_1
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    if-eq v1, v4, :cond_6

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    goto :goto_2

    :cond_6
    const p1, 0xbb80

    .line 210
    :goto_2
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getMaxSupportedChannelCountForPassthrough(II)I

    move-result p1

    .line 217
    :cond_7
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getChannelConfigForPassthrough(I)I

    move-result p1

    if-nez p1, :cond_8

    return-object v2

    .line 221
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getMaxChannelCount()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 239
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isPassthroughPlaybackSupported(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsEncoding(I)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->supportedEncodings:[I

    .line 247
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
