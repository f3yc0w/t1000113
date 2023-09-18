.class public Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;
.super Ljava/lang/Object;
.source "AudioCaptureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _capacity:I

.field private _data:[F

.field private _read:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _watermark:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _write:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m_bDebug:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->m_bDebug:Z

    .line 11
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->reset()V

    .line 14
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    .line 15
    iput p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_capacity:I

    return-void
.end method

.method private advanceBy(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_3

    .line 23
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sub-int/2addr p1, v1

    .line 24
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->advanceBy(I)I

    move-result p1

    add-int/2addr v1, p1

    return v1

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1
.end method

.method private getBytes([FI)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toArray",
            "length"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->m_bDebug:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | _write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | _watermark = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_3

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-le p2, v1, :cond_2

    move p2, v1

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p2

    .line 35
    :cond_3
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v3, v0

    if-gt p2, v3, :cond_4

    .line 42
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p2

    :cond_4
    add-int/2addr v1, v3

    if-gt p2, v1, :cond_6

    if-lez v3, :cond_5

    .line 62
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, p2, v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_5
    move v0, p2

    const/4 v3, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p2

    :cond_6
    return v2
.end method

.method private peekBytes([FI)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toArray",
            "length"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-le p2, v1, :cond_1

    move p2, v1

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2

    .line 22
    :cond_2
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v3, v0

    if-gt p2, v3, :cond_3

    .line 27
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2

    :cond_3
    add-int/2addr v1, v3

    if-gt p2, v1, :cond_5

    if-lez v3, :cond_4

    .line 39
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, p2, v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_4
    move v0, p2

    const/4 v3, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2

    :cond_5
    return v2
.end method


# virtual methods
.method public GetContSpaceUsed()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    return v1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public GetSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_capacity:I

    return v0
.end method

.method public GetSpaceUsed()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public GetUnusedSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 5
    iget v2, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_capacity:I

    sub-int/2addr v2, v1

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method

.method public IsEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_capacity:I

    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->GetSpaceUsed()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OfferBytes([FII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inData",
            "offset",
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->writeBytes([FII)I

    move-result p1

    return p1
.end method

.method public Peek([FI)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "returnData",
            "length"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->peekBytes([FI)I

    move-result p1

    return p1
.end method

.method public Poll([FI)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "returnData",
            "length"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->getBytes([FI)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public writeBytes([FII)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inData",
            "offset",
            "length"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->m_bDebug:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | _write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | _watermark = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data.length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_read:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    .line 11
    iget v3, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_capacity:I

    sub-int/2addr v3, v1

    if-lt v3, p3, :cond_1

    .line 16
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return p3

    :cond_1
    if-lt v0, p3, :cond_3

    .line 24
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_watermark:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p3

    :cond_2
    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_3

    .line 41
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_data:[F

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AudioCaptureBuffer;->_write:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return p3

    :cond_3
    return v2
.end method
