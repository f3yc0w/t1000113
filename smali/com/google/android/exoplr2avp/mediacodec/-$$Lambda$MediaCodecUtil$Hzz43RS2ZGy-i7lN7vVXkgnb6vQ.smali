.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$Hzz43RS2ZGy-i7lN7vVXkgnb6vQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$Hzz43RS2ZGy-i7lN7vVXkgnb6vQ;->f$0:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$Hzz43RS2ZGy-i7lN7vVXkgnb6vQ;->f$0:Lcom/google/android/exoplr2avp/Format;

    check-cast p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
