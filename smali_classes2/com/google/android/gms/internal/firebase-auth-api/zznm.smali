.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznm;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadb;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zznl;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznn;Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zznn;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzh(Lcom/google/android/gms/internal/firebase-auth-api/zznn;I)V

    return-object p0
.end method
