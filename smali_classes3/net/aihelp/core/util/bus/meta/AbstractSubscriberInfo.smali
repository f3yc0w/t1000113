.class public abstract Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;
.super Ljava/lang/Object;
.source "AbstractSubscriberInfo.java"

# interfaces
.implements Lnet/aihelp/core/util/bus/meta/SubscriberInfo;


# instance fields
.field private final shouldCheckSuperclass:Z

.field private final subscriberClass:Ljava/lang/Class;

.field private final superSubscriberInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/aihelp/core/util/bus/meta/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/aihelp/core/util/bus/meta/SubscriberInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->subscriberClass:Ljava/lang/Class;

    .line 32
    iput-object p2, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->superSubscriberInfoClass:Ljava/lang/Class;

    .line 33
    iput-boolean p3, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->shouldCheckSuperclass:Z

    return-void
.end method


# virtual methods
.method protected createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;)Lnet/aihelp/core/util/bus/SubscriberMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;"
        }
    .end annotation

    .line 61
    sget-object v3, Lnet/aihelp/core/util/bus/ThreadMode;->POSTING:Lnet/aihelp/core/util/bus/ThreadMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)Lnet/aihelp/core/util/bus/SubscriberMethod;

    move-result-object p1

    return-object p1
.end method

.method protected createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;)Lnet/aihelp/core/util/bus/SubscriberMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/aihelp/core/util/bus/ThreadMode;",
            ")",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 65
    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)Lnet/aihelp/core/util/bus/SubscriberMethod;

    move-result-object p1

    return-object p1
.end method

.method protected createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)Lnet/aihelp/core/util/bus/SubscriberMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/aihelp/core/util/bus/ThreadMode;",
            "IZ)",
            "Lnet/aihelp/core/util/bus/SubscriberMethod;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->subscriberClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    new-instance p1, Lnet/aihelp/core/util/bus/SubscriberMethod;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lnet/aihelp/core/util/bus/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lnet/aihelp/core/util/bus/EventBusException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not find subscriber method in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->subscriberClass:Ljava/lang/Class;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ". Maybe a missing ProGuard rule?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSubscriberClass()Ljava/lang/Class;
    .locals 1

    .line 38
    iget-object v0, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->subscriberClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSuperSubscriberInfo()Lnet/aihelp/core/util/bus/meta/SubscriberInfo;
    .locals 2

    .line 43
    iget-object v0, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->superSubscriberInfoClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/bus/meta/SubscriberInfo;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public shouldCheckSuperclass()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;->shouldCheckSuperclass:Z

    return v0
.end method
