.class public final Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allocator:Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private buildCalled:Z

.field private maxBufferMs:I

.field private minBufferMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    .line 116
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->minBufferMs:I

    .line 117
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->maxBufferMs:I

    const/16 v0, 0x9c4

    .line 118
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    const/16 v0, 0x1388

    .line 119
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 122
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 123
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/DefaultLoadControl;
    .locals 13

    .line 234
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 235
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    .line 239
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/DefaultLoadControl;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    iget v5, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->minBufferMs:I

    iget v6, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->maxBufferMs:I

    iget v7, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iget v8, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    iget v9, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->targetBufferBytes:I

    iget-boolean v10, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iget v11, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iget-boolean v12, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplr2avp/DefaultLoadControl;-><init>(Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;IIIIIZIZ)V

    return-object v0
.end method

.method public createDefaultLoadControl()Lcom/google/android/exoplr2avp/DefaultLoadControl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplr2avp/DefaultLoadControl;

    move-result-object v0

    return-object v0
.end method

.method public setAllocator(Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBackBuffer(IZ)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    const-string v1, "backBufferDurationMs"

    const-string v2, "0"

    .line 218
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 219
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 220
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
    .locals 4

    .line 159
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    .line 160
    invoke-static {p3, v0, v1, v2}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 161
    invoke-static {p4, v0, v3, v2}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    .line 163
    invoke-static {p1, p3, v0, v1}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1, p4, v0, v3}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 169
    invoke-static {p2, p1, v1, v0}, Lcom/google/android/exoplr2avp/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->minBufferMs:I

    .line 171
    iput p2, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->maxBufferMs:I

    .line 172
    iput p3, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    .line 173
    iput p4, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 202
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    return-object p0
.end method

.method public setTargetBufferBytes(I)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 187
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->targetBufferBytes:I

    return-object p0
.end method
