.class final Lqyq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field a:Z

.field final synthetic b:Landroid/app/Application;

.field final synthetic c:Ltxm;

.field final synthetic d:Lrss;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Lryb;
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Lqyq;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lqyq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lryb;->e(I)Lrxw;

    move-result-object v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lqyq;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lqyq;->b:Landroid/app/Application;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Ltuo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    const v1, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Ljava/util/Set;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    iget-object v3, p0, Lqyq;->b:Landroid/app/Application;

    nop

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v3, Lrsk;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ltuo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1a

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    sget-object p0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_27
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_28
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    iput-boolean v0, p0, Lqyq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v3, v2}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Application;Ltxm;Lrss;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lqyq;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqyq;->b:Landroid/app/Application;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqyq;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lqyq;->a:Z

    nop

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

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    goto :goto_6

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-lt v1, v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lsbh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xb

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lqyq;->166277962e993c138a6b1f0c9b571cc0m()Lryb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x3cf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

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

    :goto_5
    aput-object v1, v0, v3

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

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

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

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Lqyq;->a:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_8

    nop

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

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lqyq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lqyq;->166277962e993c138a6b1f0c9b571cc0m()Lryb;

    move-result-object p0

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

    :goto_9
    check-cast v0, Lsbh;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

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

    nop

    :goto_f
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    :goto_13
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lqyq;->a:Z

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

    nop
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lqyq;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lqyq;->a:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lqyq;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
