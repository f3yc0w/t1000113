.class public final Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 132
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 141
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-void
.end method


# virtual methods
.method public addOverride(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic addOverride(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->addOverride(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public clearOverride(Lcom/google/android/exoplr2avp/source/TrackGroup;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverride(Lcom/google/android/exoplr2avp/source/TrackGroup;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverride(Lcom/google/android/exoplr2avp/source/TrackGroup;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverride(Lcom/google/android/exoplr2avp/source/TrackGroup;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearOverrides()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverrides()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverrides()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverrides()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearOverridesOfType(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverridesOfType(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverridesOfType(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearSelectionOverrides()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearSelectionOverrides(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearVideoSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearVideoSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearVideoSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->clearVideoSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearViewportSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->clearViewportSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearViewportSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->clearViewportSizeConstraints()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method protected bridge synthetic set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAllowAudioMixedChannelCountAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedChannelCountAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedSampleRateAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedSampleRateAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowMultipleAdaptiveSelections(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowMultipleAdaptiveSelections(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoNonSeamlessAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoNonSeamlessAdaptiveness(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTextTrackSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExceedAudioConstraintsIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setForceLowestBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceLowestBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceLowestBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceLowestBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioBitrate(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioChannelCount(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioChannelCount(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoSizeSd()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSizeSd()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSizeSd()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSizeSd()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMinVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoBitrate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoFrameRate(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoSize(II)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoRoleFlags(I)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRendererDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTunnelingEnabled(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setViewportSize(IIZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSize(IIZ)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method