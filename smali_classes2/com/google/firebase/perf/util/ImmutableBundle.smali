.class public final Lcom/google/firebase/perf/util/ImmutableBundle;
.super Ljava/lang/Object;
.source "ImmutableBundle.java"


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/util/ImmutableBundle;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/util/ImmutableBundle;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/perf/util/ImmutableBundle;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private getInt(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/ImmutableBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/firebase/perf/util/Optional;->ofNullable(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/google/firebase/perf/util/ImmutableBundle;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 121
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than int: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/util/ImmutableBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/ImmutableBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/firebase/perf/util/Optional;->ofNullable(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/google/firebase/perf/util/ImmutableBundle;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 69
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than boolean: %s"

    .line 68
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/ImmutableBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Lcom/google/firebase/perf/util/Optional;->ofNullable(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/google/firebase/perf/util/ImmutableBundle;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 89
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than float: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->getInt(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1
.end method
