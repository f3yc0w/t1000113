.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzos;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadb;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzor;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzow;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzot;Lcom/google/android/gms/internal/firebase-auth-api/zzow;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzos;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;->zzm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadf;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzot;I)V

    return-object p0
.end method
