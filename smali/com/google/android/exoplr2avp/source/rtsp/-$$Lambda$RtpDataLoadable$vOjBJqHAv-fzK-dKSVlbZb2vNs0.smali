.class public final synthetic Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$0:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$2:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$0:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;->f$2:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->lambda$load$0$RtpDataLoadable(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;)V

    return-void
.end method
