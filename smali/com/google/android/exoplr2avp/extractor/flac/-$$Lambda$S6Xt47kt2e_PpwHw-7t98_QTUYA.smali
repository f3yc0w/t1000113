.class public final synthetic Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$S6Xt47kt2e_PpwHw-7t98_QTUYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$S6Xt47kt2e_PpwHw-7t98_QTUYA;->f$0:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$S6Xt47kt2e_PpwHw-7t98_QTUYA;->f$0:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
