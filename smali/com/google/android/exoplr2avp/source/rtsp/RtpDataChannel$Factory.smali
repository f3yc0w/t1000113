.class public interface abstract Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;
.super Ljava/lang/Object;
.source "RtpDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createAndOpenDataChannel(I)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createFallbackDataChannelFactory()Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;
.end method
