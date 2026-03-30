.class public final Ljvn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljps;
.implements Ljpq;
.implements Ljpv;


# instance fields
.field public volatile a:I

.field private final b:Loyn;

.field private final c:Ljut;

.field private final d:Lhoh;


# direct methods
.method public constructor <init>(Ljut;Loyn;Lhoh;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p1, p0, p3}, Ljrt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljvn;->c:Ljut;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Ljvn;->d:Lhoh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2, p1, p0}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/16 p3, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance p1, Ljrt;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ljvn;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput p1, p0, Ljvn;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljvn;->c:Ljut;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v0, -0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const-string v0, "Unknown enabled microvideo mode: "

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Ljvn;->a:I

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

    :goto_12
    const/4 v0, 0x1

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_17
    sget-object p0, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->gPGL:Ljava/lang/String;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljut;->a(Z)V

    goto/32 :goto_29

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ljvn;->c:Ljut;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljvn;->d()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Ljut;->f:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x3

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
    const-string p0, "MICROVIDEO_MODE_OFF"

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_28
    iput v0, p0, Ljut;->f:I

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

    nop

    :goto_29
    if-nez v1, :cond_4

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    if-ne p0, v0, :cond_5

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    const-string p0, "MICROVIDEO_MODE_AUTO"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne p0, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_27

    nop

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    :goto_30
    const-string p0, "null"

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v1, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Ljvn;->c:Ljut;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Ljvn;->a:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_27

    nop

    :goto_36
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final cX()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljut;->d(Ljvn;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljut;->a(Z)V

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    iget-object v0, p0, Ljvn;->c:Ljut;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljvn;->c:Ljut;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    const v0, 0x7

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final cY()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljvn;->c:Ljut;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljvn;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljut;->c(Ljvn;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final d()Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_2
    iget-object v0, p0, Ljvn;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    sget-object p0, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    iget p0, p0, Ljvn;->a:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

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

    :goto_9
    return v2

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p0, v1, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, p0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p0, v1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    check-cast v0, Lnne;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x18

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
