.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;
.super Ljava/lang/Object;
.source "BaseRetained.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/Retained;


# static fields
.field static CALLERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_TRACES:I

.field private static final TRACE:Z


# instance fields
.field private volatile disposer:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field private final retained:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final traces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "org.fusesource.hawtdispatch.BaseRetained.MAX_TRACES"

    const/16 v1, 0x64

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->MAX_TRACES:I

    const-string v0, "org.fusesource.hawtdispatch.BaseRetained.TRACE"

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    .line 220
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->CALLERS:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 224
    const-class v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;

    const-string v2, "BaseRetained.CALLERS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 226
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 228
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 235
    :catch_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 236
    sget-object v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->CALLERS:Ljava/util/HashSet;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 234
    :catch_2
    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    sget-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->MAX_TRACES:I

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static squash([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3

    .line 210
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->CALLERS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final trace(Ljava/lang/String;I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->MAX_TRACES:I

    if-ge v0, v1, :cond_0

    .line 185
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;Ljava/lang/String;I)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->squash([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 193
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 194
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 195
    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 201
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    const-string p2, "MAX_TRACES reached... no more traces will be recorded."

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected final assertRetained()V
    .locals 6

    .line 148
    sget-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    monitor-exit v0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "%s: Use of object not allowed after it has been released. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected dispose()V
    .locals 1

    .line 176
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->disposer:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getDisposer()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    .line 58
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->disposer:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object v0
.end method

.method public final release()V
    .locals 3

    .line 93
    sget-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const-string v2, "released"

    .line 97
    invoke-direct {p0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->dispose()V

    const-string v2, "disposed"

    .line 100
    invoke-direct {p0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V

    .line 102
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->dispose()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final release(I)V
    .locals 4

    .line 123
    sget-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "released "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V

    if-nez v1, :cond_0

    const-string p1, "disposed"

    .line 129
    invoke-direct {p0, p1, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->dispose()V

    .line 132
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 135
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->dispose()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final retain()V
    .locals 3

    .line 70
    sget-boolean v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->TRACE:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->traces:Ljava/util/ArrayList;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const-string v2, "retained"

    .line 74
    invoke-direct {p0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V

    .line 75
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :goto_0
    return-void
.end method

.method public final retained()I
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->retained:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final setDisposer(Ljava/lang/Runnable;)V
    .locals 1

    .line 38
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->setDisposer(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public final setDisposer(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->disposer:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method
