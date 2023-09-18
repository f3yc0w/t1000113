.class public final Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final causingEvent:Ljava/lang/Object;

.field public final causingSubscriber:Ljava/lang/Object;

.field public final eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field public final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    .line 39
    iput-object p2, p0, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    .line 40
    iput-object p3, p0, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    return-void
.end method
