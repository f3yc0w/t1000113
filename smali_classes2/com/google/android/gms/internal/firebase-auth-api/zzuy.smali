.class final Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzyg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzh(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zzm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 3
    invoke-static {v0, p1, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/android/gms/internal/firebase-auth-api/zzaba;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;Lcom/google/android/gms/internal/firebase-auth-api/zzyf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zztm;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zzg()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zzl()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zzc()Lcom/google/firebase/auth/zze;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztm;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/auth/zze;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V

    return-void
.end method