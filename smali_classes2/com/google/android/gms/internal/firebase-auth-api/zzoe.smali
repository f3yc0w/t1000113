.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzoe;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzns;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzG(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzod;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzadb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzoe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzoe;Lcom/google/android/gms/internal/firebase-auth-api/zzns;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzoe;Lcom/google/android/gms/internal/firebase-auth-api/zzoy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzg:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzoe;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzf:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzoe;I)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzf:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzns;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    :cond_0
    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzob;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzd"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoe;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzk()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoe;->zze:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v3

    :cond_4
    return v1
.end method
