.class public final Lkkm;
.super Lnee;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lowu;

.field public final b:Ljava/util/List;

.field public c:Lneh;

.field public d:Lneh;

.field public e:Lneh;

.field public f:Lneh;

.field public g:Lneh;

.field public final h:Lsui;

.field private l:Lneh;

.field private final m:Lmrp;

.field private n:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lowu;Lsui;Lmrp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lnee;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkkm;->a:Lowu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lkkm;->m:Lmrp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lkkm;->h:Lsui;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lkkm;->b:Ljava/util/List;

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

    :goto_5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkkm;->n:Landroid/os/CountDownTimer;

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

    :goto_4
    invoke-virtual {p0}, Lnee;->g()V

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lkkm;->n:Landroid/os/CountDownTimer;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

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

    :goto_4
    iput-object v0, p0, Lkkm;->d:Lneh;

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

    :goto_5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    const v2, 0x7f14008c

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    const v1, 0x7f14008f

    nop

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

    :goto_e
    iput-object v0, p0, Lkkm;->g:Lneh;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1, v2}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0, v1, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

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

    :goto_11
    iput-object v0, p0, Lkkm;->f:Lneh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0, v1, v2}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const v2, 0x7f140090

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lkkm;->l:Lneh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0, v2, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    const v4, 0x7f140160

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0, v1, v2}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lkkm;->e:Lneh;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0xa

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0, v1, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    const v2, 0x7f140167

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v2, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    const v3, 0x7f140163

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    invoke-super {p0}, Lnee;->d()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x7f140161

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v1, 0xbb8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v3, 0x7f140162

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    const v4, 0x7f140168

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v3, 0x8

    nop

    nop

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

    :goto_30
    if-lez v0, :cond_0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_31
    iget-object v3, p0, Lkkm;->b:Ljava/util/List;

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

    :goto_32
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, p0, Lkkm;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    :goto_36
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lkkm;->i:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v0, v2, v3}, Lnee;->k(Ljava/lang/String;II)Lneh;

    move-result-object v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lkkm;->c:Lneh;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3c
    const/16 v1, 0xfa0

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

    :goto_3d
    const v1, 0x8

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnee;->j(Lneh;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkkm;->l:Lneh;

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

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lkkl;-><init>(Lkkm;)V

    goto/32 :goto_16

    nop

    nop

    :goto_1
    iget-object v1, v0, Lmrp;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_2
    invoke-interface {v0}, Lfxp;->b()V

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lkkl;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v0, Lmrp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    iget-object v0, v0, Lmrp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

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

    :goto_a
    iget-object v1, v0, Lmrp;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x6

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

    :goto_e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_13
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lkkm;->n:Landroid/os/CountDownTimer;

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

    :goto_17
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    iget-object v0, p0, Lkkm;->m:Lmrp;

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

    :goto_1a
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lfxp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lkkm;->m:Lmrp;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lkkm;->h:Lsui;

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

    :goto_20
    invoke-virtual {v0}, Lmrp;->c()V

    :goto_21
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    :goto_24
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
