.class public final synthetic Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$O_a2DXzL6zDUHtukmTBTkUKaNpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$O_a2DXzL6zDUHtukmTBTkUKaNpg;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$O_a2DXzL6zDUHtukmTBTkUKaNpg;->f$1:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$O_a2DXzL6zDUHtukmTBTkUKaNpg;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$O_a2DXzL6zDUHtukmTBTkUKaNpg;->f$1:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->lambda$prepareSourceInternal$0$AdsMediaSource(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;)V

    return-void
.end method