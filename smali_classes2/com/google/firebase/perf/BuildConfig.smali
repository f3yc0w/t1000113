.class public final Lcom/google/firebase/perf/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.google.firebase.perf"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final ENFORCE_DEFAULT_LOG_SRC:Ljava/lang/Boolean;

.field public static final FIREPERF_VERSION_NAME:Ljava/lang/String;

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final TRANSPORT_LOG_SRC:Ljava/lang/String;

.field public static final VERSION_CODE:I = -0x1

.field public static final VERSION_NAME:Ljava/lang/String; = "19.0.10"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/BuildConfig;->ENFORCE_DEFAULT_LOG_SRC:Ljava/lang/Boolean;

    const-string v0, "19.0.10"

    .line 15
    sput-object v0, Lcom/google/firebase/perf/BuildConfig;->FIREPERF_VERSION_NAME:Ljava/lang/String;

    const-string v0, "FIREPERF"

    .line 16
    sput-object v0, Lcom/google/firebase/perf/BuildConfig;->TRANSPORT_LOG_SRC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
