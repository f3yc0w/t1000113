.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlp;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzG(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzlp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzlp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)Lcom/google/android/gms/internal/firebase-auth-api/zzlp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzadn;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzx(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    return-object p0
.end method


# virtual methods
.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlo;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzln;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    const-string p2, "\u0000\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
