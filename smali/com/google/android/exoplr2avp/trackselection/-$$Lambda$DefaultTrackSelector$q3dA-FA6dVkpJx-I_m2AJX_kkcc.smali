.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;->f$1:[I

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;->f$1:[I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lambda$selectVideoTrack$2(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method