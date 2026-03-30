.class public final synthetic Lkib;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lkib;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkkd;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    :goto_7
    sget-object v1, Lnne;->l:Lnne;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_23

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lgzs;->e()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lkkb;->b()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lkic;->a:Lkid;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkkd;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lkkd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    check-cast p0, Lkic;

    nop

    nop

    nop

    iget-object p0, p0, Lkic;->a:Lkid;

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lkid;->g:Z

    nop

    nop

    const-string v1, "ImageSink-close"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lkid;->c(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v1, p0}, Lpcu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lkib;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lkic;

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

    :goto_1c
    const-string v1, "heart beat"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_22

    nop

    nop

    :goto_21
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v1, Landroidx/viewpager2/widget/jY/lIiWb;->nxxGMHPDrDi:Ljava/lang/String;

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

    nop

    :goto_26
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Lkid;->c(Ljava/lang/String;)V

    :try_start_1
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lkid;

    nop

    nop

    iget-object v1, v1, Lkid;->i:Landroid/os/Handler;

    nop

    nop

    nop

    check-cast p0, Lkid;

    nop

    iget-object p0, p0, Lkid;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v3, 0x1

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    nop

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lkid;

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

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lkjy;->d:Lrss;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lkjy;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Lkjx;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lkjy;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lkjx;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_32
    check-cast p0, Lkjx;

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

    :goto_33
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1, v3, v2}, Lgjw;->d(Lnne;Lkvt;Loyd;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v2, 0x3

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

    :goto_36
    move-object v0, p0

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

    :goto_37
    check-cast p0, Lkkd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lkjx;->d:Lgzs;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lkkd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3c
    const v1, 0x5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3e
    throw p0

    nop

    :goto_3f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Lkjy;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lkib;->a:Ljava/lang/Object;

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

    :goto_44
    return-void

    nop

    :goto_45
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_46
    move-object v0, p0

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

    :goto_47
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, p0, Lkjy;->e:Lkvt;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4b
    if-ne v0, v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lkkb;

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

    :goto_4d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method
