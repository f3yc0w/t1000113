.class interface abstract Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;
.super Ljava/lang/Object;
.source "RtpDataChannel.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;
    }
.end annotation


# virtual methods
.method public abstract getInterleavedBinaryDataListener()Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method
