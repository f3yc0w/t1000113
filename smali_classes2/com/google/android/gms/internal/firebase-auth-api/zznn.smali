.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzG(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzadb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zznn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zznn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)Lcom/google/android/gms/internal/firebase-auth-api/zznn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzadn;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzx(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/firebase-auth-api/zznn;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzd:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznn;Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/firebase-auth-api/zznn;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzd:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zznh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzacc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznl;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
