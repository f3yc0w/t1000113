.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznx;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzG(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzd:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zznw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzadb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznw;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznx;Lcom/google/android/gms/internal/firebase-auth-api/zzoy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzf:I

    return-void
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    :cond_0
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzacc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzd:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznw;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zznw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznv;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
