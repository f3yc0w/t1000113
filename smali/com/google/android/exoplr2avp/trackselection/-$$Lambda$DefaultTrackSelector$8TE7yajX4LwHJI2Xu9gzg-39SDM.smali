.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lambda$selectTextTrack$4(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
