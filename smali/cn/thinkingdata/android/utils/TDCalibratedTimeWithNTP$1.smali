.class Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final ntpClient:Lcn/thinkingdata/android/utils/TDNTPClient;

.field final synthetic this$0:Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->this$0:Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcn/thinkingdata/android/utils/TDNTPClient;

    invoke-direct {p1}, Lcn/thinkingdata/android/utils/TDNTPClient;-><init>()V

    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->ntpClient:Lcn/thinkingdata/android/utils/TDNTPClient;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->this$0:Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;

    invoke-static {v0}, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->access$000(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->ntpClient:Lcn/thinkingdata/android/utils/TDNTPClient;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5}, Lcn/thinkingdata/android/utils/TDNTPClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP offset from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->ntpClient:Lcn/thinkingdata/android/utils/TDNTPClient;

    invoke-virtual {v1}, Lcn/thinkingdata/android/utils/TDNTPClient;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThinkingAnalytics.NTP"

    invoke-static {v1, v0}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->this$0:Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->ntpClient:Lcn/thinkingdata/android/utils/TDNTPClient;

    invoke-virtual {v3}, Lcn/thinkingdata/android/utils/TDNTPClient;->getOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->access$102(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;J)J

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;->this$0:Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->access$202(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;J)J

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
