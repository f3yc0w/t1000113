.class Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDQuitSafelyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutDownHooksThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDQuitSafelyService;


# direct methods
.method private constructor <init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/thinkingdata/android/TDQuitSafelyService;Lcn/thinkingdata/android/TDQuitSafelyService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;-><init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "ThinkingAnalytics.Quit"

    const-string v1, "ShutdownHook start"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-static {v1}, Lcn/thinkingdata/android/TDQuitSafelyService;->access$100(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    const-string v1, "ShutdownHook end"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
