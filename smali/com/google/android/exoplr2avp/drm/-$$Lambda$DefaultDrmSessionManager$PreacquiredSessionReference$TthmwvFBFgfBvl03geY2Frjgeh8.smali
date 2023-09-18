.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;->f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;->f$1:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;->f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;->f$1:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->lambda$acquire$0$DefaultDrmSessionManager$PreacquiredSessionReference(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method
