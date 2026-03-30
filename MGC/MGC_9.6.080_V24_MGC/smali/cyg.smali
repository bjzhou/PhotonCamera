.class final Lcyg;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Ldch;

.field final synthetic b:Lcym;


# direct methods
.method public constructor <init>(Ldch;Lcym;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcyg;->a:Ldch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcyg;->b:Lcym;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    sub-float/2addr v3, v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, v4, Lcym;->z:Lxc;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Lcyg;->b:Lcym;

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, v4, Lcym;->k:Ldxb;

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Lcym;->n(Ldcj;)Landroid/graphics/Rect;

    move-result-object v3

    nop

    invoke-virtual {v5, v3}, Ldxb;->i(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sub-float/2addr v5, v3

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

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Ldch;->d:Ldfp;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Lcyg;->b:Lcym;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v3}, Lcym;->u(Lcth;)V

    :goto_b
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    :goto_d
    iget-object v5, v4, Lcym;->A:Lxc;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v3}, Lcym;->m(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, v3, Lcym;->i:I

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_16

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    move v5, v4

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ldch;->c:Ljava/lang/Float;

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_41

    nop

    nop

    :goto_19
    iget-object v3, p0, Lcyg;->b:Lcym;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Luaz;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    :goto_1c
    cmpg-float v0, v5, v4

    nop

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

    :goto_1d
    iget-object v1, v1, Ldfp;->a:Luaz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, v3, Lcym;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v0}, Lxc;->a(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v3, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v3, :cond_6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_25
    iget-object v3, v2, Ldfp;->a:Luaz;

    nop

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

    :goto_26
    invoke-virtual {v3}, Lcym;->q()Lxc;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, p0, Lcyg;->b:Lcym;

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

    :goto_28
    iget-object v0, p0, Lcyg;->b:Lcym;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_56

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_55

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v3}, Lxc;->a(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v3, Ldcj;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2f
    check-cast v3, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_30
    invoke-virtual {v3}, Lcym;->q()Lxc;

    move-result-object v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Lcyg;->b:Lcym;

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v5, v4, Lcym;->l:Ldxb;

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_9

    nop

    invoke-virtual {v4, v3}, Lcym;->n(Ldcj;)Landroid/graphics/Rect;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Ldxb;->i(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    :goto_32
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v3, Ldcj;

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

    :goto_34
    cmpg-float v0, v3, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_36
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x9

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_b

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    :goto_3a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3b
    if-nez v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_c
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, p0, Lcyg;->b:Lcym;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_41
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_42
    if-nez v2, :cond_e

    nop

    goto/32 :goto_53

    nop

    :cond_e
    goto/32 :goto_d

    nop

    nop

    :goto_43
    iget-object v0, v2, Ldfp;->a:Luaz;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v5}, Luaz;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lcyg;->a:Ldch;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v1, v0, Ldch;->b:Ljava/lang/Float;

    nop

    nop

    :goto_47
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v3}, Luaz;->a()Ljava/lang/Object;

    move-result-object v3

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

    nop

    :goto_49
    invoke-virtual {v5, v0, v1}, Lxc;->f(ILjava/lang/Object;)V

    :goto_4a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

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

    :goto_4d
    iget-object v2, v0, Ldch;->e:Ldfp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lcyg;->a:Ldch;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4f
    iget-object p0, p0, Lcyg;->a:Ldch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_50
    check-cast v3, Ldcj;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v5, v0, v2}, Lxc;->f(ILjava/lang/Object;)V

    :goto_53
    goto/32 :goto_a

    nop

    nop

    :goto_54
    check-cast v5, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_55
    move v3, v4

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v4, v3}, Lxc;->a(I)Ljava/lang/Object;

    move-result-object v3

    nop

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

    :goto_58
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_59
    iget-object v3, v3, Lcym;->b:Lcxv;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v5, v1, Ldfp;->a:Luaz;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v3, :cond_f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v3, v3, Ldgb;->b:Lcth;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5d
    iget-object v3, p0, Lcyg;->b:Lcym;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v3, v0, Ldch;->b:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_5f
    const v1, 0x2

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

    :goto_60
    iget v3, v3, Ldch;->a:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v3, p0, Lcyg;->a:Ldch;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Lcym;->q()Lxc;

    move-result-object v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v0, v0, Ldch;->c:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_65
    if-nez v1, :cond_11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, v3, Ldcj;->a:Ldgb;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_67
    invoke-virtual {v3}, Lcxv;->invalidate()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
