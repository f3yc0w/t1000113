.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$1V1wA4iq4ALE6mJWtUasC4tx2nM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/RenderersFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/RenderersFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$1V1wA4iq4ALE6mJWtUasC4tx2nM;->f$0:Lcom/google/android/exoplr2avp/RenderersFactory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$1V1wA4iq4ALE6mJWtUasC4tx2nM;->f$0:Lcom/google/android/exoplr2avp/RenderersFactory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->lambda$setRenderersFactory$16(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/RenderersFactory;

    move-result-object v0

    return-object v0
.end method
