.class final Lcom/google/android/gms/internal/firebase-auth-api/zzwu;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzyb;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field private final zza:Lcom/google/firebase/auth/UserProfileChangeRequest;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;-><init>(I)V

    const-string v0, "request cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/UserProfileChangeRequest;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "updateProfile"

    return-object v0
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;->zzN(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v2

    .line 1
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzm(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zztg;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztg;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    .line 1
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxb;->zzE(Lcom/google/android/gms/internal/firebase-auth-api/zztg;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    return-void
.end method
