.class public interface abstract Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;,
        Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;,
        Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;,
        Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackType;
    }
.end annotation


# static fields
.field public static final FALLBACK_TYPE_LOCATION:I = 0x1

.field public static final FALLBACK_TYPE_TRACK:I = 0x2


# virtual methods
.method public abstract getFallbackSelectionFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.end method

.method public abstract getMinimumLoadableRetryCount(I)I
.end method

.method public abstract getRetryDelayMsFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
.end method

.method public abstract onLoadTaskConcluded(J)V
.end method
