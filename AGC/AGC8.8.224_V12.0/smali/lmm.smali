.class public final synthetic Llmm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/Stream;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutionException;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lllm;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llmo;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpp;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpu;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmgb;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmil;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmpa;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lntm;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lofd;I)V
    .locals 0

    iput p2, p0, Llmm;->b:I

    iput-object p1, p0, Llmm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Llmm;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "DaydreamApi"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->f:Lofc;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v0, "There is no VR homescreen installed."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException while launching VR homescreen: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Can\'t launch VR homescreen via DaydreamManager. Giving up trying to leave current VR activity..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->a:Landroid/content/Context;

    :goto_0
    iget-object v2, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v2, v2, Lcom/google/vr/ndk/base/DaydreamApi;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object v1, v0, Lcom/google/vr/ndk/base/DaydreamApi;->e:Lofe;

    return-void

    :pswitch_2
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/lens/sdk/LensApi;->h(Landroid/app/Activity;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/lens/sdk/LensApi;->h(Landroid/app/Activity;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lntm;

    iget-object v1, v0, Lntm;->c:Lntq;

    invoke-virtual {v1}, Lntq;->close()V

    iget-object v0, v0, Lntm;->a:Ljkd;

    invoke-interface {v0}, Ljkd;->close()V

    return-void

    :pswitch_5
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_6
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    return-void

    :pswitch_7
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    :try_start_2
    move-object v2, v0

    check-cast v2, Lmpa;

    iget-object v2, v2, Lmpa;->d:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v3, 0x190

    :try_start_3
    new-array v6, v3, [B

    const/4 v7, 0x0

    :goto_1
    move-object v8, v0

    check-cast v8, Lmpa;

    invoke-virtual {v8}, Lmpa;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_4

    move-object v8, v0

    check-cast v8, Lmpa;

    iget-object v8, v8, Lmpa;->d:Ljava/lang/Object;

    rsub-int v9, v7, 0x190

    check-cast v8, Ljava/io/InputStream;

    invoke-virtual {v8, v6, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr v7, v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_3
    move-object v9, v0

    check-cast v9, Lmpa;

    invoke-virtual {v9}, Lmpa;->c()Z

    move-result v9

    if-eqz v9, :cond_6

    if-gtz v7, :cond_5

    goto :goto_4

    :cond_5
    move-object v9, v0

    check-cast v9, Lmpa;

    iget-object v9, v9, Lmpa;->f:Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    check-cast v9, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v9, v9, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v9, Lmou;

    invoke-virtual {v9, v7}, Lmou;->i(Ljava/nio/ByteBuffer;)V

    :cond_6
    :goto_4
    move v7, v8

    goto :goto_1

    :cond_7
    move-object v3, v0

    check-cast v3, Lmpa;

    invoke-virtual {v3, v1}, Lmpa;->a(Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_6
    const-class v3, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v1

    check-cast v0, Lmpa;

    invoke-virtual {v0, v1}, Lmpa;->a(Ljava/io/IOException;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lmil;

    invoke-virtual {v0}, Lmil;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lmiz;

    invoke-virtual {v1, v5, v5, v4}, Lmiz;->h(ZZZ)Z

    invoke-virtual {v0}, Lmil;->b()Lmiv;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lmil;->b()Lmiv;

    move-result-object v1

    invoke-virtual {v1}, Lmiv;->isVisible()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-virtual {v0}, Lmil;->c()Lmjc;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lmil;->c()Lmjc;

    move-result-object v1

    invoke-virtual {v1}, Lmjc;->isVisible()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    :goto_6
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmil;->setVisibility(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lmil;

    invoke-virtual {v0}, Lmil;->e()V

    return-void

    :pswitch_a
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lmgb;

    iput-boolean v5, v0, Lmgb;->b:Z

    iget-object v0, v0, Lmgb;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Laia;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Laia;->l()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lmgb;

    iget v1, v0, Lmgb;->a:I

    invoke-virtual {v0, v1}, Lmgb;->a(I)V

    return-void

    :cond_c
    :goto_7
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lmgb;

    iget-object v1, v0, Lmgb;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    iget v0, v0, Lmgb;->a:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    :cond_d
    return-void

    :pswitch_b
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Llpu;

    iget-object v0, v0, Llpu;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_e
    return-void

    :pswitch_c
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/RuntimeException;

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_d
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    :try_start_8
    invoke-static {v0}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_3

    return-void

    :catch_3
    move-exception v0

    new-instance v1, Llmm;

    invoke-direct {v1, v0, v2}, Llmm;-><init>(Ljava/util/concurrent/ExecutionException;I)V

    invoke-static {v1}, Llho;->j(Ljava/lang/Runnable;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Llpp;

    iget-object v1, v0, Llpp;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    iget-object v1, v0, Llpp;->a:Llon;

    iget-object v3, v0, Llpp;->b:Ljava/lang/String;

    invoke-static {v1}, Llpt;->b(Llon;)Llst;

    move-result-object v4

    new-instance v5, Ldvo;

    const/16 v6, 0xc

    invoke-direct {v5, v3, v6}, Ldvo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Llst;->b(Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v3, Llkq;

    invoke-direct {v3, v0, v1, v2}, Llkq;-><init>(Llpp;Lnou;I)V

    iget-object v0, v0, Llpp;->a:Llon;

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Llpp;

    invoke-virtual {v0}, Llpp;->a()Lnou;

    return-void

    :pswitch_10
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Llpp;

    invoke-virtual {v0}, Llpp;->b()V

    return-void

    :pswitch_11
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :pswitch_12
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    invoke-static {}, Llho;->i()V

    check-cast v0, Lllm;

    iget-object v1, v0, Lllm;->b:Lllo;

    iget-wide v1, v1, Lllo;->h:J

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-eqz v3, :cond_10

    return-void

    :cond_10
    iget-object v1, v0, Lllm;->b:Lllo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lllo;->h:J

    iget-object v0, v0, Lllm;->b:Lllo;

    iget-object v0, v0, Lllo;->l:Llln;

    iput-boolean v4, v0, Llln;->i:Z

    return-void

    :pswitch_13
    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_9
    move-object v2, v0

    check-cast v2, Llmo;

    iget-object v2, v2, Llmo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    check-cast v3, Llmo;

    iget-object v3, v3, Llmo;->c:Llhz;

    move-object v4, v0

    check-cast v4, Llmo;

    iget-object v4, v4, Llmo;->a:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llml;

    invoke-virtual {v4}, Llml;->b()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v4, v0

    check-cast v4, Llmo;

    iget-object v4, v4, Llmo;->a:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llml;

    iget v4, v4, Llml;->a:F

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v3, v4}, Llhz;->a(F)Llmt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :catchall_2
    move-exception v2

    check-cast v0, Llmo;

    iget-object v2, v0, Llmo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v0, Llmo;->c:Llhz;

    invoke-virtual {v0, v1}, Llhz;->a(F)Llmt;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :goto_9
    :try_start_a
    move-object v1, v0

    check-cast v1, Lofd;

    iget-object v4, v1, Lofd;->a:Landroid/app/Activity;

    check-cast v0, Lofd;

    iget-object v0, v0, Lofd;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    iget-object v0, p0, Llmm;->a:Ljava/lang/Object;

    check-cast v0, Lofd;

    iget v6, v0, Lofd;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a .. :try_end_a} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while starting next VR activity: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
