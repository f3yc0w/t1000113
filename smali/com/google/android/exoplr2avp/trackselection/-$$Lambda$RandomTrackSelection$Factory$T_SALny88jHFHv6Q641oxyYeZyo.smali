.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$RandomTrackSelection$Factory$T_SALny88jHFHv6Q641oxyYeZyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/trackselection/RandomTrackSelection$Factory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/trackselection/RandomTrackSelection$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$RandomTrackSelection$Factory$T_SALny88jHFHv6Q641oxyYeZyo;->f$0:Lcom/google/android/exoplr2avp/trackselection/RandomTrackSelection$Factory;

    return-void
.end method


# virtual methods
.method public final createAdaptiveTrackSelection(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$RandomTrackSelection$Factory$T_SALny88jHFHv6Q641oxyYeZyo;->f$0:Lcom/google/android/exoplr2avp/trackselection/RandomTrackSelection$Factory;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/RandomTrackSelection$Factory;->lambda$createTrackSelections$0$RandomTrackSelection$Factory(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move-result-object p1

    return-object p1
.end method
