.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaSource$Factory$duCw3Tl2AO4iXaEx5jNPMY7HBGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaSource$Factory$duCw3Tl2AO4iXaEx5jNPMY7HBGU;->f$0:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaSource$Factory$duCw3Tl2AO4iXaEx5jNPMY7HBGU;->f$0:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->lambda$new$0(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    move-result-object p1

    return-object p1
.end method
