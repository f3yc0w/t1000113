.class Lcn/thinkingdata/android/SharedPreferencesLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/SharedPreferencesLoader$LoadSharedPreferences;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/SharedPreferencesLoader;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn/thinkingdata/android/SharedPreferencesLoader$LoadSharedPreferences;

    invoke-direct {v0, p1, p2}, Lcn/thinkingdata/android/SharedPreferencesLoader$LoadSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcn/thinkingdata/android/SharedPreferencesLoader;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
