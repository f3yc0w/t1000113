.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$t3ma0ulXlZkQN2oMJwNiIXv4T4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$t3ma0ulXlZkQN2oMJwNiIXv4T4M;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$t3ma0ulXlZkQN2oMJwNiIXv4T4M;->f$0:I

    invoke-static {v0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$1(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
