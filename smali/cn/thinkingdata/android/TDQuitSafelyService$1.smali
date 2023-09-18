.class Lcn/thinkingdata/android/TDQuitSafelyService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/TDQuitSafelyService;->quit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDQuitSafelyService;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$1;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 0

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V

    return-void
.end method
