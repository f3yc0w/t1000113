.class Lcn/thinkingdata/android/TDWebAppInterface$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/TDWebAppInterface;->thinkingdata_track(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDWebAppInterface;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$flag:Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDWebAppInterface;Ljava/lang/String;Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->this$0:Lcn/thinkingdata/android/TDWebAppInterface;

    iput-object p2, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$flag:Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;

    iput-object p4, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 2

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$flag:Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;->tracked()V

    iget-object v0, p0, Lcn/thinkingdata/android/TDWebAppInterface$1;->val$event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackFromH5(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
