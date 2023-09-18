.class final Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Lcom/google/android/exoplr2avp/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 2687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2688
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 2689
    iput-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 0

    .line 2681
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 2694
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method
