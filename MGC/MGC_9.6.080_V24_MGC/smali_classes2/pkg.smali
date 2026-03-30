.class public final Lpkg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpkn;


# instance fields
.field public final a:Lpln;

.field public final b:Lpcu;

.field public final c:Lpdf;

.field private final d:Lhdn;


# direct methods
.method public constructor <init>(Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 0

    goto/32 :goto_7

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
    iput-object p4, p0, Lpkg;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lpkg;->a:Lpln;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->xYtdQGWbVBRkXIT:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lpkg;->d:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpkg;->b:Lpcu;

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


# virtual methods
.method public final e(Lpri;Lpko;Lows;Landroid/os/Handler;)V
    .locals 11

    goto/32 :goto_28

    nop

    nop

    :goto_0
    xor-int/2addr v4, v1

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

    :goto_1
    move-object v6, p3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    invoke-direct {v9, v8}, Lpkd;-><init>(Lsuu;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v8, v9, v7}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

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

    nop

    nop

    :goto_9
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v4, "Cannot create a ConstrainedHighSpeedCaptureSession with more than two streams!"

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-static {v4, v5}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v7}, Lpmb;->h()Landroid/view/Surface;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    move-object v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    move v6, v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_39

    nop

    nop

    :goto_14
    const-string v2, "Cannot create a ConstrainedHighSpeedCaptureSession without streams!"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    goto/32 :goto_51

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v7, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v8, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v10, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "Cannot create a ConstrainedHighSpeedCaptureSession with buffered streams!"

    nop

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

    :goto_21
    iget-object v0, p0, Lpkg;->d:Lhdn;

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

    :goto_22
    move v1, v2

    nop

    nop

    :goto_23
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v7, v7, Lpmb;->a:Loxv;

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

    :goto_25
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    invoke-static {v8}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Lhdn;->b:Ljava/lang/Object;

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

    :goto_28
    const v0, 0x1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v8, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v4, p0, Lpkg;->d:Lhdn;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    if-le v4, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v2, p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2d
    sget-object v5, Lpkx;->a:Ljava/util/Comparator;

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

    :goto_2e
    xor-int/2addr v0, v1

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

    nop

    :goto_2f
    const/4 v3, 0x2

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

    :goto_30
    move-object v3, p2

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

    :goto_31
    const-string v5, "Surface cannot be null"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_32
    invoke-static {v5, v4}, Lryb;->s(Ljava/util/Comparator;Ljava/lang/Iterable;)Lryb;

    move-result-object v4

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

    :goto_33
    check-cast v7, Lpmb;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_34
    iget-object v0, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_35
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

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

    nop

    :goto_37
    move-object v4, p1

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

    nop

    :goto_38
    invoke-static {v1, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_39
    if-lt v6, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3a
    invoke-direct/range {v1 .. v6}, Lpkf;-><init>(Lpkg;Lpko;Lpri;Landroid/os/Handler;Lows;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v8}, Lsuu;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3e
    const-string v2, "No more than two surfaces can be accepted"

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

    :goto_3f
    new-instance v7, Lpkf;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v5, Lsbh;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_42
    iget-object v0, v0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-le v0, v3, :cond_4

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

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v4, Lhdn;->b:Ljava/lang/Object;

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

    :goto_45
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_49
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v9, Lpke;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v9, Lpkd;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v7, Lstd;->a:Lstd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_56

    nop

    nop

    :goto_55
    move-object v1, v7

    nop

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

    :goto_56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

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

    :goto_57
    invoke-direct {v9, v7, v2}, Lpke;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lpkg;->d:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_59
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Lpkg;->d:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v7, v9, v10}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5d
    iget v5, v5, Lsbh;->c:I

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

    nop

    nop
.end method
