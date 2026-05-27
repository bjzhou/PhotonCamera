.class public final Lkhz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkhz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkrf;
    .locals 1

    new-instance v0, Lkrf;

    invoke-direct {v0}, Lkrf;-><init>()V

    return-object v0
.end method

.method public static b()Llho;
    .locals 2

    new-instance v0, Llho;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llho;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lkhz;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Llho;

    invoke-direct {v0, v2}, Llho;-><init>([C)V

    return-object v0

    :pswitch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Llzz;

    invoke-direct {v0}, Llzz;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Ljai;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Ljai;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iget-object v1, v0, Ljai;->a:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljai;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Llvr;->a:Llvr;

    return-object v0

    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Llgf;

    invoke-direct {v0}, Llgf;-><init>()V

    return-object v0

    :pswitch_6
    throw v2

    :pswitch_7
    new-instance v0, Lkrq;

    invoke-direct {v0}, Lkrq;-><init>()V

    return-object v0

    :pswitch_8
    invoke-static {}, Lkhz;->a()Lkrf;

    move-result-object v0

    return-object v0

    :pswitch_9
    const-string v0, "MediaFS"

    invoke-static {v0, v1}, Ljvd;->i(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string v0, "MediaFS-IO"

    invoke-static {v0, v1}, Ljvd;->e(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    sget-object v0, Lkoh;->a:Lkgd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    invoke-static {}, Lkog;->a()Lkog;

    move-result-object v0

    return-object v0

    :pswitch_d
    new-instance v0, Lkof;

    invoke-direct {v0}, Lkof;-><init>()V

    return-object v0

    :pswitch_e
    invoke-static {}, Lkoe;->a()Lkoe;

    move-result-object v0

    return-object v0

    :pswitch_f
    new-instance v0, Lknq;

    invoke-direct {v0}, Lknq;-><init>()V

    return-object v0

    :pswitch_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    sub-long v11, v9, v5

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v1, v11, v13

    if-gez v1, :cond_1

    add-long/2addr v5, v9

    const-wide/16 v3, 0x2

    div-long/2addr v5, v3

    const-wide/32 v3, 0xf4240

    mul-long v7, v7, v3

    sub-long/2addr v5, v7

    move-wide v3, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Llas;

    invoke-direct {v0, v3, v4}, Llas;-><init>(J)V

    return-object v0

    :pswitch_11
    new-instance v0, Lkgd;

    invoke-direct {v0, v2, v2}, Lkgd;-><init>([C[B)V

    return-object v0

    :pswitch_12
    new-instance v0, Lkhx;

    invoke-direct {v0}, Lkhx;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
