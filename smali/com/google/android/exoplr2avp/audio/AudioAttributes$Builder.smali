.class public final Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedCapturePolicy:I

.field private contentType:I

.field private flags:I

.field private spatializationBehavior:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->contentType:I

    .line 91
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->flags:I

    const/4 v1, 0x1

    .line 92
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->usage:I

    .line 93
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 94
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->spatializationBehavior:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 8

    .line 129
    new-instance v7, Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->usage:I

    iget v4, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    iget v5, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->spatializationBehavior:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/audio/AudioAttributes;-><init>(IIIIILcom/google/android/exoplr2avp/audio/AudioAttributes$1;)V

    return-object v7
.end method

.method public setAllowedCapturePolicy(I)Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    return-object p0
.end method

.method public setContentType(I)Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
    .locals 0

    .line 99
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->contentType:I

    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
    .locals 0

    .line 105
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->flags:I

    return-object p0
.end method

.method public setSpatializationBehavior(I)Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
    .locals 0

    .line 123
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->spatializationBehavior:I

    return-object p0
.end method

.method public setUsage(I)Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;
    .locals 0

    .line 111
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Builder;->usage:I

    return-object p0
.end method
