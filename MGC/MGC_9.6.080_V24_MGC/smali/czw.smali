.class public final Lczw;
.super Lufp;
.source "PG"


# static fields
.field public static final a:Ltxs;

.field public static final b:Ljava/lang/ThreadLocal;


# instance fields
.field public final c:Landroid/view/Choreographer;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Z

.field public final i:Lczv;

.field public final j:Lbns;

.field private final m:Ltyu;

.field private n:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()Ljava/lang/Runnable;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lczw;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lczw;->m:Ltyu;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    const/16 v3, 0x283

    nop

    nop

    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v1, Lczw;->a:Ltxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ltxz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    sget-object v0, Lczs;->a:Lczs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lczt;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v0}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lczw;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    new-instance v0, Lczt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lczw;->m:Ltyu;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lczw;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lczw;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lufp;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lczw;->i:Lczv;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lczw;->f:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {p2, p0}, Lczv;-><init>(Lczw;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lczw;->j:Lbns;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    new-instance p2, Lczv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lczw;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p2, p1, p0}, Ldab;-><init>(Landroid/view/Choreographer;Lczw;)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    new-instance p2, Ltyu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p2}, Ltyu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p2, Ldab;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lczw;->c:Landroid/view/Choreographer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Luad;Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lczw;->m:Ltyu;

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ltyu;->addLast(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lczw;->n:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x1

    nop

    iput-boolean p2, p0, Lczw;->n:Z

    nop

    nop

    iget-object v0, p0, Lczw;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lczw;->i:Lczv;

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lczw;->h:Z

    nop

    nop

    if-nez v0, :cond_1

    nop

    iput-boolean p2, p0, Lczw;->h:Z

    nop

    nop

    iget-object p2, p0, Lczw;->c:Landroid/view/Choreographer;

    nop

    nop

    nop

    iget-object p0, p0, Lczw;->i:Lczv;

    nop

    invoke-virtual {p2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_5
    monitor-exit p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lczw;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lczw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_5
    goto :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Lczw;->23ce148e54b083367f51e25c7971761em()Ljava/lang/Runnable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lczw;->23ce148e54b083367f51e25c7971761em()Ljava/lang/Runnable;

    move-result-object v0

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lczw;->m:Ltyu;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltyu;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    const/4 v1, 0x0

    nop

    iput-boolean v1, p0, Lczw;->n:Z

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
