.class final Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;
.super Ljava/lang/Object;
.source "RtspResponse.java"


# instance fields
.field public final headers:Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

.field public final messageBody:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;)V
    .locals 1

    const-string v0, ""

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;-><init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;->status:I

    .line 38
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;->headers:Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

    .line 39
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;->messageBody:Ljava/lang/String;

    return-void
.end method