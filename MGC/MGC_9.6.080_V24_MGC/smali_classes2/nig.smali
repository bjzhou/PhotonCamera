.class public final Lnig;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lpci;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public f:Lpci;

.field public g:Lpci;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lncl;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lnig;->e:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object p1, p0, Lnig;->c:Ljava/util/List;

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

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_20

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lnig;->j:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lncl;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lnig;->f:Lpci;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lnig;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lnig;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    const v0, 0x9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Lnig;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/os/Handler;

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

    :goto_1e
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lnig;->g:Lpci;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lncl;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v1}, Lncl;-><init>(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Lnig;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, p0, Lnig;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lnig;->f:Lpci;

    nop

    invoke-interface {v1}, Lpci;->close()V

    iget-object v1, p0, Lnig;->g:Lpci;

    nop

    nop

    invoke-interface {v1}, Lpci;->close()V

    new-instance v1, Lncl;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    invoke-direct {v1, v2}, Lncl;-><init>(I)V

    iput-object v1, p0, Lnig;->f:Lpci;

    nop

    nop

    nop

    new-instance v1, Lncl;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    invoke-direct {v1, v2}, Lncl;-><init>(I)V

    iput-object v1, p0, Lnig;->g:Lpci;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-boolean v1, p0, Lnig;->e:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :cond_1
    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnig;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_c
    add-int v0, v0, v1

    nop

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
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnig;->a()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnig;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnig;->c:Ljava/util/List;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnig;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onGlobalLayout()V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/view/View;

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

    :goto_2
    iget-object v0, p0, Lnig;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnig;->c:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnig;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    :goto_19
    if-gez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop

    :goto_22
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v2, 0x8

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_29
    const v0, 0x8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v1, :cond_8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v1, v2, :cond_a

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_a
    goto/32 :goto_34

    nop

    nop

    :goto_32
    goto/16 :goto_4

    nop

    nop

    :goto_33
    goto/32 :goto_9

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

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

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_b

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v1, v2, :cond_c

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_c
    goto/32 :goto_37

    nop

    nop

    :goto_39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final onScrollChanged()V
    .locals 7

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

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

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnig;->j:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v3, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1b

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_18
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v4, v0, v2, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lnig;->j:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    const-wide/16 v3, 0x1f4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnig;->h:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    :goto_30
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_30

    nop

    :goto_32
    iget-object v0, p0, Lnig;->j:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lnig;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
