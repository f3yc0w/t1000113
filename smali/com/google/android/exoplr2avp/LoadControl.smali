.class public interface abstract Lcom/google/android/exoplr2avp/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# virtual methods
.method public abstract getAllocator()Lcom/google/android/exoplr2avp/upstream/Allocator;
.end method

.method public abstract getBackBufferDurationUs()J
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected([Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/source/TrackGroupArray;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V
.end method

.method public abstract retainBackBufferFromKeyframe()Z
.end method

.method public abstract shouldContinueLoading(JJF)Z
.end method

.method public abstract shouldStartPlayback(JFZJ)Z
.end method
