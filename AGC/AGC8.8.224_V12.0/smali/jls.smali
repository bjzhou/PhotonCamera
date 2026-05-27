.class public final synthetic Ljls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ljkj;

.field public final synthetic d:Lkgd;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkgd;Ljava/util/concurrent/Executor;Ljkj;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljls;->a:Landroid/content/Context;

    iput-object p2, p0, Ljls;->d:Lkgd;

    iput-object p3, p0, Ljls;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ljls;->c:Ljkj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Ljls;->a:Landroid/content/Context;

    iget-object v1, p0, Ljls;->d:Lkgd;

    iget-object v2, p0, Ljls;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Ljls;->c:Ljkj;

    sget-object v4, Ljkb;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v5, Ljkb;->b:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xa

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/app/Application;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.support.multidex.MultiDexApplication"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljda;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create in-app trainer: android.app.Application class has been subclassed ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") and BrellaInit.myAppCanHandleMultipleProcesses() was not called"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v0}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_0
    const/16 v5, 0x11

    :try_start_1
    const-string v6, "com.google.android.gms.learning.dynamite.training.InAppTrainerImpl"

    sget-object v7, Ljlq;->c:Ljlq;

    invoke-static {v0, v6, v7}, Ljlf;->a(Landroid/content/Context;Ljava/lang/String;Ljle;)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Ljln;
    :try_end_1
    .catch Ljld; {:try_start_1 .. :try_end_1} :catch_6

    new-instance v7, Ljlt;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v6, v8, v8}, Ljlt;-><init>(Lkgd;Ljln;[B[B)V

    const/16 v8, 0x8

    :try_start_2
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v9

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v10

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v9}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v10}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v11, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v9, 0xc

    invoke-virtual {v6, v9, v11}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v10, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v9, v3, Ljkj;->k:Landroid/net/Uri;

    invoke-static {v9}, Ljlw;->d(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v3, Ljkj;->i:Landroid/net/Uri;

    invoke-static {v9}, Ljlw;->d(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v3, Ljkj;->f:Landroid/net/Uri;

    invoke-static {v9}, Ljlw;->d(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_4

    :cond_3
    :try_start_3
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v9

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v10

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v9}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v10}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v11, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v6, v4, v11}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v10, :cond_a

    iget-object v9, v3, Ljkj;->k:Landroid/net/Uri;

    if-eqz v9, :cond_4

    const-string v0, "local computation plan with TensorflowSpec is not supported."

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_4
    :try_start_4
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v9

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v10

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v9}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v10}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v11, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v9, 0x9

    invoke-virtual {v6, v9, v11}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v10, :cond_a

    invoke-virtual {v3}, Ljkj;->b()[B

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_5

    const-string v0, "Context data is not supported."

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_5
    :try_start_5
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v9

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v10

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v9}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v10}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v11, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v6, v8, v11}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v10, :cond_a

    iget-object v9, v3, Ljkj;->d:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, v3, Ljkj;->j:Ljkl;

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "Training interval is not supported for federated computation."

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_7
    :goto_1
    :try_start_6
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v9

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v10

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v9}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v10}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v11, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v11, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v9, 0x7

    invoke-virtual {v6, v9, v11}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v10, :cond_a

    iget v9, v3, Ljkj;->e:I

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, "Unsupported AttestationMode"

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_9
    :goto_2
    :try_start_7
    invoke-static {v0}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v0

    invoke-static {v2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v2

    invoke-virtual {v6}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v4, v2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v4, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v7}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x6

    invoke-virtual {v6, v0, v4}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v2, :cond_a

    const-string v0, "Failed to init impl"

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v5, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_3
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_a
    :goto_3
    return-void

    :catch_4
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :cond_b
    :goto_4
    const-string v0, "appdata Uri scheme is not supported."

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_5
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catch_6
    move-exception v0

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Ljld;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Cannot create in-app trainer: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method
