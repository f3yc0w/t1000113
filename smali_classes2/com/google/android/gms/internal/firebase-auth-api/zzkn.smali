.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadb;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzko;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkr;)Lcom/google/android/gms/internal/firebase-auth-api/zzkn;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzko;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzko;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzko;Lcom/google/android/gms/internal/firebase-auth-api/zzkr;)V

    return-object p0
.end method
