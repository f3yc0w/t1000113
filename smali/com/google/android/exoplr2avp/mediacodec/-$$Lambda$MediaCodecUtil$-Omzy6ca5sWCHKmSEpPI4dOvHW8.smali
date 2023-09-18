.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;->INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$-Omzy6ca5sWCHKmSEpPI4dOvHW8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$2(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
