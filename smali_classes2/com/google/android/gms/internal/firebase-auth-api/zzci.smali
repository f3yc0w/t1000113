.class final Lcom/google/android/gms/internal/firebase-auth-api/zzci;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzgb;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzcj;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzci;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgb;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;)Lcom/google/android/gms/internal/firebase-auth-api/zzaek;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzkf;)Lcom/google/android/gms/internal/firebase-auth-api/zzkc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;)Lcom/google/android/gms/internal/firebase-auth-api/zzaek;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzmt;)Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjw;

    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)Lcom/google/android/gms/internal/firebase-auth-api/zzaek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzadn;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)Lcom/google/android/gms/internal/firebase-auth-api/zzjz;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzg(IIIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzga;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/4 v7, 0x5

    const/4 v8, 0x3

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzg(IIIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzga;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzg(IIIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzga;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzg(IIIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzga;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzkf;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgb;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqs;->zzb(I)V

    return-void
.end method
