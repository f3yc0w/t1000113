.class final Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# static fields
.field private static final HANDLE_FRAME_RENDERED:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;)V
    .locals 0

    .line 1948
    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1949
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    .line 1950
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->setOnFrameRenderedListener(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private handleFrameRendered(J)V
    .locals 3

    .line 1987
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 1992
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->access$000(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;)V

    goto :goto_0

    .line 1995
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1997
    iget-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;Lcom/google/android/exoplr2avp/ExoPlaybackException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1977
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1979
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->toLong(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFrameRendered(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;JJ)V
    .locals 2

    .line 1962
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    .line 1963
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p3, p2

    .line 1964
    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1969
    iget-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1971
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    :goto_0
    return-void
.end method
