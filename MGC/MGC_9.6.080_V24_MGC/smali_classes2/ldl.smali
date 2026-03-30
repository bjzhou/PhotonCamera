.class final Lldl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llxk;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lsui;

.field final synthetic c:Lldf;

.field final synthetic d:Llcq;

.field final synthetic e:Llko;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lsui;Lldf;Llcq;Llko;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lldl;->e:Llko;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p4, p0, Lldl;->d:Llcq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lldl;->c:Lldf;

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

    :goto_4
    iput-object p2, p0, Lldl;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lldl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop
.end method


# virtual methods
.method public final synthetic a()V
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

.method public final b()V
    .locals 5

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1
    iput-wide v1, v0, Lsod;->e:J

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Llcq;->a:Ltkb;

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

    nop

    :goto_8
    iget v4, v1, Lsjo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    iput v4, v1, Lsjo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v0, p0, Lldl;->d:Llcq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lldl;->e:Llko;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lldf;->a:Lsdb;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    check-cast v0, Lsod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Lktq;->f()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    sget-object v4, Lsjo;->a:Lsjo;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v3, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lsjo;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    sget-object v2, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->FAAoGyH:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lldl;->c:Lldf;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x8

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

    :goto_1e
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_4

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    :goto_22
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    :goto_23
    iget-object v2, v0, Lldf;->b:Lijo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_36

    nop

    nop

    :goto_26
    or-int/lit8 v4, v4, 0x2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Ltkb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lldf;->d:Llcm;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    sget-object v3, Lsod;->a:Lsod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2d
    iget v3, v0, Lsod;->b:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lldl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f
    if-nez v1, :cond_6

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    goto/16 :goto_13

    nop

    :catch_0
    move-exception v0

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

    :goto_32
    invoke-virtual {v2}, Lijo;->o()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v3, 0xd1c

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lldl;->b:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_38
    iget-object p0, p0, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_39
    iput-boolean v1, v0, Lldf;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3b
    iput-wide v2, v1, Lsjo;->d:J

    nop

    nop

    :goto_3c
    :try_start_0
    iget-object v0, v0, Lldf;->e:Lpin;

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    invoke-virtual {v0}, Lpin;->d()V

    goto/16 :goto_13

    nop

    nop

    nop

    :cond_7
    sget-object v0, Lldf;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xd1b

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v1, "FrameServerSession not provided. Failed to abort capture."

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    or-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3f
    iput v3, v0, Lsod;->b:I

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

    :goto_40
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_41
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_8
    goto/32 :goto_43

    nop

    :goto_43
    goto/32 :goto_25

    nop

    nop

    :goto_44
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v1, Llcm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c(Ljrl;)V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop
.end method

.method public final synthetic d(ZZ)V
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

.method public final synthetic e()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic f(Lrss;)V
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

.method public final synthetic g(IILjava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic h(IILjava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method

.method public final synthetic i(II)V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method

.method public final synthetic j(II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
