.class final Lcom/google/android/gms/internal/firebase-auth-api/zzwh;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzyb;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsm;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lcom/google/firebase/auth/internal/zzh;->zza(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaay;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaay;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "signInWithCredential"

    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;->zzN(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzf:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/google/firebase/auth/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 3
    new-instance v1, Lcom/google/firebase/auth/internal/zzr;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzr;-><init>(Lcom/google/firebase/auth/internal/zzx;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzm(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxb;->zzu(Lcom/google/android/gms/internal/firebase-auth-api/zzsm;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    return-void
.end method
