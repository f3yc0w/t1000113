.class abstract Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplr2avp/Format;

.field public final rendererIndex:I

.field public final trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/source/TrackGroup;I)V
    .locals 0

    .line 3031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3032
    iput p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 3033
    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    .line 3034
    iput p3, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    .line 3035
    invoke-virtual {p2, p3}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->format:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method


# virtual methods
.method public abstract getSelectionEligibility()I
.end method

.method public abstract isCompatibleForAdaptationWith(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
