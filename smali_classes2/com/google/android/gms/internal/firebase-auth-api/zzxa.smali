.class public Lcom/google/android/gms/internal/firebase-auth-api/zzxa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

.field private final zzb:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzwz;Lcom/google/android/gms/common/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/logging/Logger;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxa;)V
    .locals 1

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzwz;Lcom/google/android/gms/common/logging/Logger;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending auto retrieval timeout response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending send verification code response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzzd;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending create auth uri response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending delete account response."

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/firebase-auth-api/zztk;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zztk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result with credential"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result for mfa"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending failure result."

    .line 2
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzh(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending get token and account info user response"

    .line 2
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending password reset response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending email verification response."

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending set account info response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when setting FirebaseUI Version"

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending token result."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwz;->zzo(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending verification completed response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
