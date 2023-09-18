.class final Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)V
    .locals 0

    .line 1934
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1934
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .locals 2

    .line 1988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 1993
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onPositionAdvancing(J)V

    :cond_0
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .locals 2

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    .line 1952
    invoke-static {p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1200(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    .line 1954
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1300(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1955
    sget-boolean p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_0

    const-string p2, "DefaultAudioSink"

    .line 1958
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1956
    :cond_0
    new-instance p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .locals 2

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    .line 1977
    invoke-static {p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1200(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    .line 1979
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1300(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1980
    sget-boolean p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_0

    const-string p2, "DefaultAudioSink"

    .line 1983
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1981
    :cond_0
    new-instance p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onUnderrun(IJ)V
    .locals 10

    .line 2000
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2001
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1500(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 2002
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    :cond_0
    return-void
.end method
