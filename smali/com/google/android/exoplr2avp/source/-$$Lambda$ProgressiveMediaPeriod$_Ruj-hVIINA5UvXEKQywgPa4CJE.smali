.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaPeriod$_Ruj-hVIINA5UvXEKQywgPa4CJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/extractor/SeekMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;Lcom/google/android/exoplr2avp/extractor/SeekMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaPeriod$_Ruj-hVIINA5UvXEKQywgPa4CJE;->f$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaPeriod$_Ruj-hVIINA5UvXEKQywgPa4CJE;->f$1:Lcom/google/android/exoplr2avp/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaPeriod$_Ruj-hVIINA5UvXEKQywgPa4CJE;->f$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaPeriod$_Ruj-hVIINA5UvXEKQywgPa4CJE;->f$1:Lcom/google/android/exoplr2avp/extractor/SeekMap;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->lambda$seekMap$1$ProgressiveMediaPeriod(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    return-void
.end method
