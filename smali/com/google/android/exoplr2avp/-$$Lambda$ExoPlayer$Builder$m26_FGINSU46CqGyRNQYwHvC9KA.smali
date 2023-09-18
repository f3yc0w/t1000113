.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$m26_FGINSU46CqGyRNQYwHvC9KA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$m26_FGINSU46CqGyRNQYwHvC9KA;->f$0:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$m26_FGINSU46CqGyRNQYwHvC9KA;->f$0:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->lambda$new$7(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
