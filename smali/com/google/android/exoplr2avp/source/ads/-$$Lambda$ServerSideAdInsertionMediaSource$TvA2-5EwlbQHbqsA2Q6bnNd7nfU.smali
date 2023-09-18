.class public final synthetic Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$ServerSideAdInsertionMediaSource$TvA2-5EwlbQHbqsA2Q6bnNd7nfU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$ServerSideAdInsertionMediaSource$TvA2-5EwlbQHbqsA2Q6bnNd7nfU;->f$0:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$ServerSideAdInsertionMediaSource$TvA2-5EwlbQHbqsA2Q6bnNd7nfU;->f$1:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$ServerSideAdInsertionMediaSource$TvA2-5EwlbQHbqsA2Q6bnNd7nfU;->f$0:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$ServerSideAdInsertionMediaSource$TvA2-5EwlbQHbqsA2Q6bnNd7nfU;->f$1:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->lambda$setAdPlaybackStates$0$ServerSideAdInsertionMediaSource(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method
