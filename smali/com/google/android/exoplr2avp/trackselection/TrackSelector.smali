.class public abstract Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

.field private listener:Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 158
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->listener:Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;

    .line 117
    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    return-void
.end method

.method protected final invalidate()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->listener:Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method public isSetParametersSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->listener:Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;

    .line 127
    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    return-void
.end method

.method public abstract selectTracks([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method
