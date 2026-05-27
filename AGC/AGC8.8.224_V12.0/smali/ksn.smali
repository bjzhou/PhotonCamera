.class public final Lksn;
.super Ljava/lang/Object;

# interfaces
.implements Lksl;


# static fields
.field public static final a:Lksn;


# instance fields
.field private final b:[Lksm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lksn;

    invoke-direct {v0}, Lksn;-><init>()V

    sput-object v0, Lksn;->a:Lksn;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Loac;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x49

    if-ge v2, v5, :cond_1

    aget v5, v0, v2

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    throw v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lksm;

    iput-object v0, p0, Lksn;->b:[Lksm;

    invoke-static {}, Loac;->a()[I

    move-result-object v0

    :goto_1
    if-ge v1, v5, :cond_3

    aget v2, v0, v1

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_2

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lksn;->b:[Lksm;

    new-instance v6, Lksm;

    invoke-direct {v6}, Lksm;-><init>()V

    aput-object v6, v2, v3

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    iput-object v2, v6, Lksm;->a:Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    throw v4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILkrw;)Lksk;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p2, p0, Lksn;->b:[Lksm;

    aget-object p1, p2, p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :pswitch_1
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_2
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_3
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_4
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_5
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_6
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_7
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_8
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_9
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_a
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_b
    sget-object p1, Lksg;->a:Lksg;

    return-object p1

    :pswitch_c
    new-instance v3, Llhe;

    iget-object p1, p2, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Llhe;-><init>(Landroid/content/Context;[C)V

    sget-object p1, Lksr;->a:Lksr;

    if-nez p1, :cond_1

    sget-object p1, Lksr;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v1, Lksr;->a:Lksr;

    if-nez v1, :cond_0

    iget-object p2, p2, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance p2, Lksr;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lksr;-><init>(Landroid/content/Context;Llhe;[B[B[B)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CheckboxObserverThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lksq;

    new-instance v3, Ljmb;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Ljmb;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p2, v3}, Lksq;-><init>(Lksr;Landroid/os/Handler;)V

    const-string v1, "multi_cb"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p2, Lksr;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sput-object p2, Lksr;->a:Lksr;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lksr;->a:Lksr;

    return-object p1

    :pswitch_d
    sget-object p1, Lksg;->b:Lksg;

    return-object p1

    :pswitch_e
    sget-object p1, Lksg;->a:Lksg;

    return-object p1

    :cond_2
    iget-object p1, p1, Lksm;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lmyu;

    iget p2, p2, Lmyu;->c:I

    :goto_1
    if-ge v0, p2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lksj;

    invoke-virtual {v2}, Lksj;->b()Lksi;

    move-result-object v3

    invoke-virtual {v3}, Lksi;->a()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmvv;

    invoke-virtual {v3}, Lmvv;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lksj;->a()Lksh;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    sget-object p1, Lksg;->a:Lksg;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
