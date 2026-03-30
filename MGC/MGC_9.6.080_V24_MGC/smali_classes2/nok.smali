.class public final synthetic Lnok;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final synthetic a:Ltxm;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ltxm;

.field public final synthetic f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public synthetic constructor <init>(Ltxm;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ltxm;ZZLtxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnok;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p5, p0, Lnok;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnok;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-boolean p4, p0, Lnok;->c:Z

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lnok;->e:Ltxm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lnok;->b:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 14

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

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
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v3}, Lqou;->h(Lryy;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v3}, Lqou;->i(Z)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnoj;->a:Lowu;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lqou;->f()Lmei;

    move-result-object v1

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
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_7
    if-ne v2, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lnok;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lnop;->g:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_30

    nop

    :goto_b
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Lnop;->a:Ltxm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v3}, Lqou;->g(Lryy;)V

    goto/32 :goto_20

    nop

    nop

    :goto_e
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, v4}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_16
    const-string v3, "InAppUpdate"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lnoq;->b()Lnop;

    move-result-object v0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3, v4, v5}, Lryy;->H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    sget-object v2, Llyr;->at:Llzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnoj;->b:Ljov;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    check-cast v3, Lnoo;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2, v3}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_1e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v5, Lnne;->k:Lnne;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-static {v0, v1, p0}, Ljmo;->b(Lowu;Ljph;Ljpv;)V

    :goto_22
    goto/32 :goto_13

    nop

    nop

    :goto_23
    iget-object v0, p0, Lnok;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_24
    sget-object v4, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v2, Llyr;->aq:Llzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Lnop;->c:Landroid/content/pm/PackageInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, v0, Lnop;->e:Ljov;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lnok;->e:Ltxm;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v3, v0, Lnop;->b:Ltxm;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    const/4 v11, 0x0

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

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v0, Lnop;->g:Llyv;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x1

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

    :goto_2f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v3, Lnne;->b:Lnne;

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

    :goto_32
    cmp-long v1, v12, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2, v3}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v3, v1, Lqou;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_35
    iget-object v2, v0, Lnop;->d:Lowu;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    sget-object v2, Llyr;->av:Llzg;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    sget-object v2, Llyr;->aq:Llzg;

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

    :goto_39
    const/16 v2, 0xc

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lnop;->g:Llyv;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v0, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i(Lmeh;Lmei;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Llyv;->c(Llyp;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_41
    cmp-long v2, v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, v0, Lnop;->g:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_43
    sget-object v4, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_44
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v0, Lnon;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Lnok;->a:Ltxm;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v0, p0, Lnok;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lnoq;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4a
    invoke-static {}, Lmei;->a()Lqou;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4b
    check-cast v2, Lnot;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_3a

    nop

    :goto_4d
    goto/32 :goto_39

    nop

    nop

    :goto_4e
    iget-boolean v1, p0, Lnok;->c:Z

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

    :goto_4f
    invoke-virtual {v1, v2}, Llyv;->c(Llyp;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual/range {v4 .. v11}, Lmjv;->A(IJJII)V

    :goto_51
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_52
    check-cast v1, Ljava/lang/Long;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v2}, Llyv;->c(Llyp;)V

    goto/32 :goto_66

    nop

    nop

    :goto_54
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_55
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_56
    if-nez v1, :cond_5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v3, v2, Lnot;->b:Lnoo;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_58
    sget-object v2, Llyr;->ar:Llzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, v0, Lnop;->g:Llyv;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5a
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v2, v3, v0}, Ljmo;->b(Lowu;Ljph;Ljpv;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5c
    iput v2, v1, Lqou;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v1, v0, Lnon;->e:Z

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-wide v6, v12

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v1, v0, Lnop;->f:Llyv;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    iget-object v1, v0, Lnop;->f:Llyv;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_62
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_63
    sget-object v2, Llyr;->ar:Llzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_65
    sget-object v2, Llyr;->au:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_66
    iget-object v4, v0, Lnop;->h:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p0, Lnoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_68
    invoke-virtual {v1, v3}, Lqou;->j(Z)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
