.class final Ljmq;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field final synthetic a:Ljmu;


# direct methods
.method public constructor <init>(Ljmu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljmq;->a:Ljmu;

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

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_52

    nop

    nop

    :goto_0
    goto/32 :goto_33

    nop

    nop

    :goto_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Ljmu;->H:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Ljmu;->c:Ljmb;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_6
    aget v2, v2, v3

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

    nop

    :goto_7
    iget-object p0, p0, Ljmq;->a:Ljmu;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p1, Ljmu;->s:Z

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, p1, Ljmu;->i:D

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4a

    nop

    nop

    :goto_e
    iget-object p1, p0, Ljmq;->a:Ljmu;

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

    :goto_f
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    double-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Ljmu;->d(Lfgv;)V

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_15
    neg-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1, v1}, Lfgv;->q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    iget-boolean p1, p1, Ljmu;->v:Z

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_1e
    if-eqz v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x1

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

    :goto_21
    iget-object p1, p1, Ljmu;->l:Ljava/util/concurrent/Semaphore;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

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

    :goto_23
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    :goto_24
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_25
    float-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_27
    invoke-virtual {v0, p1, v3}, Lfgv;->j(Landroid/os/Handler;Lfgp;)V

    :try_start_0
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    iget-object p1, p1, Ljmu;->l:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p1, Ljmu;->H:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-boolean p1, p1, Ljmu;->G:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2f
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    iget-wide v4, p1, Ljmu;->h:D

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_31
    iget-wide v2, p1, Ljmu;->i:D

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object v1

    nop

    nop

    :goto_33
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, p1, v1}, Lfgv;->p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v3, p0, v0, v4}, Ljmt;-><init>(Ljmq;Lfgv;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v2, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v3, Ljmt;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    iput-boolean v2, p1, Ljmu;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3a
    if-gtz p1, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_14

    nop

    nop

    :goto_3c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-double v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3e
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Ljnq;->f()[F

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_41
    iget-object v0, v0, Ljmb;->b:Lfgv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    cmpl-double p1, v2, v4

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    sub-double/2addr v2, v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    iget v2, p1, Ljmu;->n:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_45
    iput-wide v2, p1, Ljmu;->h:D

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_48
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_49
    check-cast p1, [Ljava/lang/Void;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4b
    iput-wide v2, p1, Ljmu;->i:D

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

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

    nop

    :goto_4d
    iget-object p1, p0, Ljmq;->a:Ljmu;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4e
    iput v2, p1, Ljmu;->k:I

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

    :goto_4f
    iget-boolean v3, p1, Ljmu;->j:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p1, p1, Ljmu;->H:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_51
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_52
    const v0, 0x8

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v2, p1, Ljmu;->g:Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop
.end method
