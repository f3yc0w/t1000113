.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lcom/google/firebase/perf/internal/AppStateUpdateHandler;
.source "Trace.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/firebase/perf/FirebasePerformanceAttributable;
.implements Lcom/google/firebase/perf/internal/SessionAwareObject;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field static final CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;

.field private static final sTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/perf/util/Clock;

.field private final counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Lcom/google/firebase/perf/util/Timer;

.field private final gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/google/firebase/perf/metrics/Trace;

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/google/firebase/perf/util/Timer;

.field private final subtraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final transportManager:Lcom/google/firebase/perf/transport/TransportManager;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/SessionAwareObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->sTraces:Ljava/util/Map;

    .line 652
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 778
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$2;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$2;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3

    .line 183
    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/internal/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/internal/AppStateMonitor;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;-><init>(Lcom/google/firebase/perf/internal/AppStateMonitor;)V

    .line 69
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->weakReference:Ljava/lang/ref/WeakReference;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    .line 189
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    .line 190
    const-class v2, Lcom/google/firebase/perf/metrics/Counter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 191
    const-class v0, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/util/Timer;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 192
    const-class v0, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/util/Timer;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 194
    const-class v2, Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_1

    .line 196
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 197
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 198
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    goto :goto_1

    .line 201
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 202
    new-instance p1, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {p1}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 203
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ZLcom/google/firebase/perf/metrics/Trace$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->weakReference:Ljava/lang/ref/WeakReference;

    .line 129
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 132
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    if-eqz p6, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    new-instance p6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_1
    iput-object p6, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    if-eqz p7, :cond_2

    goto :goto_2

    .line 135
    :cond_2
    new-instance p7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_2
    iput-object p7, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    .line 136
    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 137
    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 139
    iget-object p1, p1, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 102
    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    .line 104
    invoke-static {}, Lcom/google/firebase/perf/internal/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/internal/AppStateMonitor;

    move-result-object v4

    .line 105
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;)V
    .locals 6

    .line 154
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 0

    .line 170
    invoke-direct {p0, p4}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;-><init>(Lcom/google/firebase/perf/internal/AppStateMonitor;)V

    .line 69
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->weakReference:Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    .line 171
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    .line 174
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    .line 175
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    .line 176
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 177
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 179
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 703
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    .line 708
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    .line 713
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Exceeds max limit of number of attributes - %d"

    .line 710
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/firebase/perf/internal/PerfMetricValidator;->validateAttribute(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 717
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 704
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Trace \'%s\' has been stopped"

    .line 705
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 96
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->sTraces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    .line 467
    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 9

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    .line 482
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->sTraces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    .line 484
    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    .line 486
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v8

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V

    .line 487
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Counter;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/google/firebase/perf/metrics/Counter;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/Counter;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 291
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    .line 293
    iget-object v1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-nez v1, :cond_1

    .line 294
    iput-object p1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    :cond_1
    return-void
.end method

.method static startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 503
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->sTraces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz p0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :cond_0
    return-object p0
.end method

.method static stopTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 2

    .line 522
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->sTraces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 525
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Trace \'%s\' is started but not stopped when it is destructed!"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 542
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 541
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v3}, Lcom/google/firebase/perf/metrics/Trace;->incrementTsnsCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 550
    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method getCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    return-object v0
.end method

.method getEndTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public getLongMetric(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/Counter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter v0

    .line 794
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 797
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/internal/PerfSession;

    if-eqz v3, :cond_0

    .line 799
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 803
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStartTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method getSubtraces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    return-object v0
.end method

.method hasStarted()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementMetric(Ljava/lang/String;J)V
    .locals 7

    .line 342
    invoke-static {p1}, Lcom/google/firebase/perf/internal/PerfMetricValidator;->validateMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 344
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    const-string p1, "Cannot increment metric \'%s\'. Metric name is invalid.(%s)"

    .line 345
    invoke-static {p3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 344
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 354
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 353
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 363
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 362
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->increment(J)V

    .line 374
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 379
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v4, v2

    const-string p1, "Incrementing metric \'%s\' to %d on trace \'%s\'"

    .line 375
    invoke-static {p3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 374
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method isActive()Z
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStopped()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 677
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;->checkAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v4, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Setting attribute \'%s\' to \'%s\' on trace \'%s\'"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    iget-object v8, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v8, v7, v0

    .line 681
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 680
    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 688
    sget-object v5, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 694
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Can not set attribute \'%s\' with value \'%s\' (%s)"

    .line 689
    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 688
    invoke-virtual {v5, v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putMetric(Ljava/lang/String;J)V
    .locals 6

    .line 415
    invoke-static {p1}, Lcom/google/firebase/perf/internal/PerfMetricValidator;->validateMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 417
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    const-string p1, "Cannot set value for metric \'%s\'. Metric name is invalid.(%s)"

    .line 418
    invoke-static {p3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 417
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 427
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 426
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 436
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 435
    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 443
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v0

    .line 444
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->setCount(J)V

    .line 445
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 450
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v5, v2

    const-string p1, "Setting metric \'%s\' to \'%s\' on trace \'%s\'"

    .line 446
    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    .line 445
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 730
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can\'t remove a attribute from a Trace that\'s stopped."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 7

    .line 210
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trace feature is disabled."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/perf/internal/PerfMetricValidator;->validateTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 218
    sget-object v3, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    const-string v0, "Cannot start trace \'%s\'. Trace name is invalid.(%s)"

    .line 219
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v4, "Trace \'%s\' has already started, should not start again!"

    .line 226
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 233
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->registerForAppState()V

    .line 235
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->updateSession(Lcom/google/firebase/perf/internal/PerfSession;)V

    .line 241
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_3
    return-void
.end method

.method startStage(Ljava/lang/String;)V
    .locals 10

    .line 306
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v4

    .line 307
    invoke-direct {p0, v4}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    .line 308
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    new-instance v9, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()V
    .locals 5

    .line 249
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Trace \'%s\' has not been started so unable to stop!"

    .line 251
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Trace \'%s\' has already stopped, should not stop again!"

    .line 257
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->unregisterForAppState()V

    .line 265
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    .line 266
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v1, :cond_3

    .line 267
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    .line 268
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    new-instance v1, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;->build()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 271
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 273
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    goto :goto_0

    .line 276
    :cond_2
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Trace name is empty, no log is sent to server"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method stopStage()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public updateSession(Lcom/google/firebase/perf/internal/PerfSession;)V
    .locals 2

    if-nez p1, :cond_0

    .line 77
    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to add new SessionId to the Trace. Continuing without it."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 636
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 637
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 639
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->counters:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 640
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 641
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 642
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter p2

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 644
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
