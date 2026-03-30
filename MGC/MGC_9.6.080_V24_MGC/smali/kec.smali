.class public final Lkec;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfgw;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lkec;->b:I

    nop

    goto/32 :goto_0

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
.method public final a()V
    .locals 5

    goto/32 :goto_35

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, v0, Lkek;->i:Z

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

    :goto_2
    check-cast v0, Lkek;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_11

    nop

    nop

    :goto_4
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v2, Lscz;

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

    :goto_6
    iget-object v2, v0, Lkek;->F:Landroid/os/Handler;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lkek;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->p()V

    :try_start_0
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    check-cast v2, Lkek;

    nop

    nop

    iget-object v2, v2, Lkek;->s:Ljmu;

    nop

    nop

    invoke-virtual {v2}, Ljmu;->b()F

    move-result v2

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    cmpg-float v2, v2, v4

    nop

    nop

    nop

    if-gtz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    nop

    :cond_0
    check-cast v0, Lkek;

    nop

    nop

    nop

    iput-boolean v3, v0, Lkek;->E:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2, v4, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lkek;->c:Lglm;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, v2, Ljmu;->t:Lihg;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

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

    nop

    :goto_16
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/32 :goto_27

    nop

    nop

    :goto_18
    const-string v4, "aligner has already been started! State=%s"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lkek;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1b
    iput-boolean v1, v2, Ljmu;->s:Z

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x10

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    iput-boolean v1, p0, Ljmu;->s:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_21
    check-cast v0, Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v4, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lkek;

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

    :goto_25
    iget-object v0, v0, Lkek;->f:Ljmn;

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

    :goto_26
    iget-object v2, v0, Lkek;->s:Ljmu;

    nop

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

    :goto_27
    iget-object v2, v0, Lkek;->F:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lkek;->F(Z)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_2a
    iget-object v0, v0, Lkek;->G:Lihg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lkek;->f:Ljmn;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljmn;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :goto_30
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Ljms;->a:Ljmu;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v0, p0, Lkec;->b:I

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

    :goto_37
    check-cast v0, Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_38
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lkek;->b()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v1}, Lglm;->o(Z)V

    :catch_0
    goto/32 :goto_e

    nop

    nop

    :goto_3c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v2, v2, Ljmu;->b:Ljmx;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3e
    iget v3, v0, Lkek;->w:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3f
    iput-boolean v3, v2, Ljmx;->D:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_40
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

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

    :goto_42
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_43
    check-cast p0, Ljms;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ljmn;->start()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lkek;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_46
    const/16 v4, 0xb35

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    if-eq v0, v2, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    :goto_48
    iget-object v0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_49
    iget v0, v0, Lkek;->x:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lkec;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object v2, Lkek;->a:Lsdb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v0, Lkek;->o:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

    :goto_4d
    if-nez v0, :cond_5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4a

    nop

    nop
.end method
