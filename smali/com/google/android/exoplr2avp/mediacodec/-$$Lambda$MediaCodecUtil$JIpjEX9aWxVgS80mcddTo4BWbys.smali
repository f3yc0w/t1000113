.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$JIpjEX9aWxVgS80mcddTo4BWbys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$JIpjEX9aWxVgS80mcddTo4BWbys;->f$0:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$MediaCodecUtil$JIpjEX9aWxVgS80mcddTo4BWbys;->f$0:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->lambda$sortByScore$3(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
