.class public final Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;
.super Ljava/lang/Object;
.source "RtspMessageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtspAuthUserInfo"
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;->username:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;->password:Ljava/lang/String;

    return-void
.end method
