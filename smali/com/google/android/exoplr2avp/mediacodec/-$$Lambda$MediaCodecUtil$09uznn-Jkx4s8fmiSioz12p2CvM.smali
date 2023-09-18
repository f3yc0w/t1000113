.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;->INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$09uznn-Jkx4s8fmiSioz12p2CvM;

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

    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$1(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
