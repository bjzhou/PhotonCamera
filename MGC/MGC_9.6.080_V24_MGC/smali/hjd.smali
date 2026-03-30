.class public final Lhjd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqs;
.implements Lmeh;
.implements Lmee;


# instance fields
.field public final a:Lrss;

.field public final b:Lhjf;

.field public c:Lrss;

.field public d:Lrss;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public final i:Llad;

.field public final j:Lhjh;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private final l:Loyn;

.field private m:Lrss;


# direct methods
.method public constructor <init>(Lrss;Lhjf;Llad;Loyn;Ljava/util/concurrent/ScheduledExecutorService;Lmjv;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhjd;->j:Lhjh;

    nop

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

    :goto_1
    new-instance p1, Lhjh;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhjd;->b:Lhjf;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhjd;->c:Lrss;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lhjd;->e:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lhjd;->h:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lhjd;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p2, p6}, Lhjh;-><init>(ILmjv;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lhjd;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iput-object v0, p0, Lhjd;->d:Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p3, p0, Lhjd;->i:Llad;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lhjd;->f:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p5, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lhjd;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static final k(FF)Z
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    float-to-double p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    if-ltz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpg-double p0, p0, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    if-ltz p0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_10
    cmpg-double p0, v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    nop

    nop

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

    :goto_13
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    float-to-double v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lhiv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    check-cast v1, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, v0, v3}, Lhhs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lhjh;->g()V

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhjd;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    :goto_7
    new-instance v2, Lhhs;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lhjd;->g:Z

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lhii;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lhjd;->f:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lhjd;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhjd;->j:Lhjh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhjd;->d:Lrss;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lhjd;->e:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lixe;->h(Lixg;)V

    goto/32 :goto_c

    nop

    nop

    :goto_16
    check-cast v0, Lixe;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

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

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lhii;->d:Lrss;

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

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    sget-object v1, Lixg;->e:Lixg;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    const/16 v3, 0xd

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

    :goto_26
    iget-object v2, v1, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lhii;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final dW()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lhjd;->i(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lhiv;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

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

    :goto_b
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    iget-object p0, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final dX(Lmel;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final dY()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhjd;->i(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    new-instance v0, Lhiv;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

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

    nop

    :goto_10
    const v0, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lhjd;->f:Z

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lhjh;->c(Lsmm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lsmm;->c:Lsmm;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lhjd;->e:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lhjh;->c(Lsmm;)V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    sget-object v0, Lsmm;->b:Lsmm;

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

    :goto_b
    return-void

    nop

    nop

    :goto_c
    iget-object p0, p0, Lhjd;->j:Lhjh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    const v1, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

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

    nop

    :goto_8
    throw v0

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lhjd;->m:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lows;

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    :cond_1
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lows;-><init>()V

    iget-object v1, p0, Lhjd;->d:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v1, p0, Lhjd;->d:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    new-instance v1, Lhiv;

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lhiv;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lhii;->f(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :cond_2
    iget-object v1, p0, Lhjd;->l:Loyn;

    nop

    nop

    nop

    new-instance v2, Lhih;

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lhih;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Lhjd;->k:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    invoke-interface {v1, v2, v3}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhjd;->i:Llad;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Llad;->c(Lpqs;)V

    new-instance v1, Lhjc;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-direct {v1, p0, v2}, Lhjc;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lhjd;->j:Lhjh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhjh;->a()V

    iget-object v1, p0, Lhjd;->j:Lhjh;

    nop

    nop

    new-instance v2, Lhjc;

    nop

    const/4 v3, 0x0

    nop

    invoke-direct {v2, v1, v3}, Lhjc;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    iput-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    iget-object v0, p0, Lhjd;->b:Lhjf;

    nop

    invoke-virtual {v0}, Lhjf;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhjd;->b()V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lhjd;->h:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized j()V
    .locals 1

    goto/32 :goto_3

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

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    throw v0

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p0}, Lhjd;->b()V

    iget-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lows;

    nop

    invoke-virtual {v0}, Lows;->close()V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    iput-object v0, p0, Lhjd;->m:Lrss;

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lhjd;->b:Lhjf;

    nop

    nop

    invoke-virtual {v0}, Lhjf;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop
.end method
