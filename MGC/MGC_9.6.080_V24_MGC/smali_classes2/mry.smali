.class public final synthetic Lmry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lmse;

.field public final synthetic b:Landroid/content/DialogInterface$OnDismissListener;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lmse;Landroid/content/DialogInterface$OnDismissListener;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmry;->a:Lmse;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p3, p0, Lmry;->c:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmry;->b:Landroid/content/DialogInterface$OnDismissListener;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Lmse;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v5, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_21

    nop

    :goto_3
    goto/32 :goto_4d

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmry;->a:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_8
    goto/32 :goto_42

    nop

    nop

    :goto_9
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :goto_a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

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

    :goto_c
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmp-long v3, v3, v5

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

    :goto_e
    iget-object v3, v2, Lsjz;->e:Ltkv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    iget-object v2, v0, Lmse;->m:Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_10
    iget-object v1, v0, Lmse;->n:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    const v1, 0x20

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    iget v4, v3, Lsjz;->b:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_16
    goto/32 :goto_55

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_19
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    check-cast v4, Lsjz;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v1, v4, Lsjz;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    iput v5, v4, Lsjz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Lmjv;->h(Lsjz;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    iget-object v3, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, v4, Lsjz;->b:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    or-int/2addr v1, v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_26
    sub-long/2addr v1, v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_28
    invoke-interface {v3}, Ltkv;->c()Z

    move-result v4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    iget-object v1, v0, Lmse;->k:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1, v0}, Lmsc;->e(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lmry;->b:Landroid/content/DialogInterface$OnDismissListener;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1, v2}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :goto_2e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, v1, Ljei;->a:Ljava/util/List;

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

    :goto_31
    iget-wide v4, v0, Lmse;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_32
    check-cast v1, Ljei;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    iget-object v2, v2, Lsjz;->e:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v0, Lmse;->m:Ltkb;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_37
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v5, Lsjz;->a:Lsjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3b
    or-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, p0, Lmry;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3d
    iget-object p1, v0, Lmse;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3e
    iget-object v3, v0, Lmse;->m:Ltkb;

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

    :goto_3f
    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_40
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v2, Lsjz;

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

    :goto_42
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_45
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_47
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v2, Lsjz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4a
    if-eqz v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x1

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

    :goto_4c
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 p0, 0x0

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

    :goto_4e
    const v0, 0x9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_50
    iput-object v3, v2, Lsjz;->e:Ltkv;

    nop

    nop

    :goto_51
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-wide v1, v3, Lsjz;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_53
    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    :goto_55
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput v4, v3, Lsjz;->b:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5a
    iget-wide v3, v0, Lmse;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v3, Lsjz;

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

    :goto_5c
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    :goto_5d
    check-cast v1, Lmsc;

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
.end method
