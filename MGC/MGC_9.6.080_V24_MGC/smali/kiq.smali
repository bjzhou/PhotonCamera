.class public final Lkiq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# instance fields
.field private final a:Lkjc;

.field private final b:Lkjc;

.field private final c:Lkjc;

.field private final d:Llgc;

.field private final e:Ltud;

.field private f:Lrss;

.field private final g:Lhoh;


# direct methods
.method public constructor <init>(Lhoh;Lkhe;Lkga;Lkfw;Ltud;Llgc;)V
    .locals 1

    goto/32 :goto_8

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
    iput-object v0, p0, Lkiq;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkiq;->g:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lkiq;->b:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lkiq;->a:Lkjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p5, p0, Lkiq;->e:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lkiq;->d:Llgc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lkiq;->c:Lkjc;

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

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lkiq;->f:Lrss;

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
    return p0

    nop

    :goto_6
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lkjc;->a()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhna;->A:Lhmn;

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

    :goto_9
    iget-object v0, p0, Lkiq;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkiq;->g:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkiq;->g:Lhoh;

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

    :goto_1
    invoke-static {p1, p2, p3}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkiq;->a:Lkjc;

    nop

    nop

    :goto_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

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

    :goto_9
    invoke-interface {v0, p1, p2, p3, p4}, Lkjc;->b(Lpge;Lkmq;Lkjj;Lkjb;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v0, p2, Lkmq;->i:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_b
    invoke-interface {p4}, Lkjb;->a()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lhna;->y:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d
    sget-object v2, Lhna;->A:Lhmn;

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

    :goto_e
    check-cast v0, Lkjc;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lkiq;->g:Lhoh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, p1, v1}, Lkjc;->c(Lpge;Llgc;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p3, "!"

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

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_18
    sget-object v1, Lhna;->ah:Lhmn;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lkiq;->g:Lhoh;

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

    :goto_1a
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    :goto_1b
    iget-object v0, p0, Lkiq;->g:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    sget-object v1, Lhna;->A:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    nop

    :goto_25
    iput-object v1, p0, Lkiq;->f:Lrss;

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

    nop

    :goto_26
    iget-object v0, p0, Lkiq;->e:Ltud;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lkiq;->c:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lkiq;->a:Lkjc;

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, p1, v1}, Lkjc;->c(Lpge;Llgc;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    nop

    :goto_2f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_30
    const v0, 0x15

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lkiq;->a:Lkjc;

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

    :goto_32
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lkiq;->d:Llgc;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_36
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lkiq;->g:Lhoh;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v2, Lhna;->ae:Lhmn;

    nop

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

    nop

    :goto_3c
    sget-object v1, Lhmz;->n:Lhmn;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0, p1, v1}, Lkjc;->c(Lpge;Llgc;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_8

    nop

    nop

    :goto_41
    iget-object v1, p0, Lkiq;->d:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

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

    :goto_43
    iget-object v1, p0, Lkiq;->g:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lkiq;->b:Lkjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Lkiq;->d:Llgc;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

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

    :goto_49
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4a
    const-string p2, "Cannot find an HdrPlusLauncher to process frame "

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

    :goto_4b
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lkiq;->b:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4e
    if-ne v0, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    goto/32 :goto_42

    nop

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
