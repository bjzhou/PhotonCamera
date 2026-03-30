.class final Lqnv;
.super Lqnw;
.source "PG"


# instance fields
.field final synthetic a:Lqnx;


# direct methods
.method public constructor <init>(Lqnx;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqnw;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqnv;->a:Lqnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqnx;->f:Ljava/lang/Runnable;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lqmf;->a(Ljava/lang/Class;)Lqmf;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_5
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v1, v0, Lqnx;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iput-object p1, v0, Lqnx;->h:Lqmf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget-object p1, p1, Lqnx;->e:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    iget-object p1, p0, Lqnv;->a:Lqnx;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lqnv;->a:Lqnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    iget-object p0, p0, Lqnv;->a:Lqnx;

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

    :goto_16
    const-wide/16 v0, 0x2bc

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v0, Lqnx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xf

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

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_1
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqnv;->a:Lqnx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Lqmf;->a(Ljava/lang/Class;)Lqmf;

    move-result-object v2

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

    :goto_5
    iget-boolean v1, v0, Lqnx;->c:Z

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

    nop

    nop

    :goto_6
    check-cast v1, Lqni;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-eq v1, v2, :cond_1

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

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

    :goto_c
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_10

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lqnv;->a:Lqnx;

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

    :goto_18
    iget-object v0, p0, Lqnv;->a:Lqnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lqnx;->g:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    iput-boolean p1, p0, Lqnx;->c:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, v0, Lqnx;->b:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, v0, Lqnx;->e:Landroid/os/Handler;

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

    :goto_22
    iget-object p0, p0, Lqnx;->f:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

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

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Lqni;->l(Lqmf;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_27
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    iput v1, v0, Lqnx;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    const v0, 0xe

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

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

    :goto_2
    check-cast v1, Lqni;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lqnx;->d:Z

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, v0, Lqnx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Lqnx;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lqnx;->g:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lqnv;->a:Lqnx;

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_17
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    iget-boolean v1, v0, Lqnx;->d:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1}, Lqmf;->a(Ljava/lang/Class;)Lqmf;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lqnv;->a:Lqnx;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lqnx;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqnv;->a:Lqnx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lqnx;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lqmf;->a(Ljava/lang/Class;)Lqmf;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lqnx;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method
