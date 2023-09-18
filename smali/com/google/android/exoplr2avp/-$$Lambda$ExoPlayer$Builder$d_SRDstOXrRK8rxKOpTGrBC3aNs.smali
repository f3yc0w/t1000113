.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$d_SRDstOXrRK8rxKOpTGrBC3aNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$d_SRDstOXrRK8rxKOpTGrBC3aNs;->f$0:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$d_SRDstOXrRK8rxKOpTGrBC3aNs;->f$0:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->lambda$setBandwidthMeter$20(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0
.end method
