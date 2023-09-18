.class final Lcom/google/android/gms/internal/firebase-auth-api/zzvu;
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

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;->zzb(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzaay;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaay;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "reauthenticateWithCredential"

    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;->zzN(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzx;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zzf:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/google/firebase/auth/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzm(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4280

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzl(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxb;->zzu(Lcom/google/android/gms/internal/firebase-auth-api/zzsm;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    return-void
.end method
