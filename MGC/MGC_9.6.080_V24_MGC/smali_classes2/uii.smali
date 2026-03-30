.class public final Luii;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luib;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lufa;

.field final synthetic c:Luio;


# direct methods
.method public constructor <init>(Luio;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Luii;->c:Luio;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Luiq;->p:Lunv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final D(Lumw;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Luii;->b:Lufa;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2}, Lufa;->D(Lumw;I)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final a(Ltzy;)Ljava/lang/Object;
    .locals 17

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v2, v15, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2
    invoke-virtual {v9}, Lufa;->A()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lunu;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Luiq;->l:Lunv;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Luix;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v2, Luiq;->p:Lunv;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v5, Luiq;->o:Lunv;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-wide v11, v15

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {p1 .. p1}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v2, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_13
    throw v0

    nop

    :goto_14
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Luio;->x()Z

    move-result v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v9}, Lufa;->i()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_19
    iget-object v2, v1, Luio;->e:Lueq;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    const-string v1, "unreachable"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Luio;->c()J

    move-result-wide v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw v0

    nop

    :goto_22
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v8, v9, v2}, Luio;->o(JLuix;)Luix;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_25
    throw v0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_28
    iget-object v1, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    move v3, v14

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

    :goto_2a
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2b
    cmp-long v4, v4, v8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual/range {v8 .. v13}, Luio;->k(Luix;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2e
    invoke-virtual {v10}, Lumw;->p()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    div-long v8, v15, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_31
    int-to-long v4, v4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    move-object v4, v2

    nop

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v10, v6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v1, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    :goto_36
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_33

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_39
    rem-long v4, v15, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v4}, Lumw;->p()V

    :goto_3b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v4}, Luep;->b()J

    move-result-wide v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3d
    sget v4, Luiq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Luio;->l()Ljava/lang/Throwable;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3f
    iget-object v0, v0, Luii;->c:Luio;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v2, v2, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_5a

    nop

    nop

    :goto_44
    iget-object v1, v0, Luii;->c:Luio;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_45
    iget-wide v4, v2, Luix;->b:J

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

    :goto_46
    iget-object v8, v0, Luii;->c:Luio;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_16

    nop

    nop

    :goto_49
    move-object v10, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4a
    if-ne v2, v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    :goto_4b
    if-ltz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    long-to-int v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v1, Luiq;->l:Lunv;

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

    :goto_4e
    sget-object v5, Luiq;->m:Lunv;

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

    nop

    :goto_4f
    move-object v2, v4

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_50
    sget-object v1, Luiq;->n:Lunv;

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

    nop

    :goto_51
    move-object v9, v4

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_53
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ne v1, v2, :cond_a

    nop

    goto/32 :goto_5c

    nop

    :cond_a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput-object v2, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    :goto_57
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_59
    iget-object v4, v1, Luio;->c:Luep;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_5a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_57

    nop

    :goto_5c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v1}, Lucg;->o(Ltzy;)Lufa;

    move-result-object v9

    nop

    nop

    nop

    :try_start_0
    iput-object v9, v0, Luii;->b:Lufa;

    nop

    move-object v1, v8

    nop

    move-object v2, v4

    nop

    nop

    move v3, v6

    nop

    move-object v10, v4

    nop

    nop

    nop

    nop

    move-wide v4, v15

    nop

    nop

    nop

    move v11, v6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v6, p0

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Luio;->k(Luix;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Luiq;->m:Lunv;

    nop

    nop

    nop

    if-ne v1, v2, :cond_b

    nop

    invoke-static {v0, v10, v11}, Luio;->E(Luib;Luix;I)V

    goto/16 :goto_48

    nop

    nop

    nop

    :cond_b
    sget-object v2, Luiq;->o:Lunv;

    nop

    const/4 v11, 0x0

    nop

    if-ne v1, v2, :cond_17

    nop

    nop

    invoke-virtual {v8}, Luio;->c()J

    move-result-wide v1

    nop

    nop

    cmp-long v1, v15, v1

    nop

    nop

    nop

    nop

    if-gez v1, :cond_c

    nop

    invoke-virtual {v10}, Lumw;->p()V

    :cond_c
    iget-object v1, v8, Luio;->e:Lueq;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Luix;

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_60
    invoke-virtual {v8}, Luio;->x()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    iget-object v1, v0, Luii;->b:Lufa;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v0, Luii;->b:Lufa;

    nop

    nop

    nop

    nop

    sget-object v2, Luiq;->l:Lunv;

    nop

    iput-object v2, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Luii;->c:Luio;

    nop

    nop

    nop

    invoke-virtual {v0}, Luio;->l()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    invoke-interface {v1, v0}, Ltzy;->t(Ljava/lang/Object;)V

    goto/16 :goto_48

    nop

    :cond_e
    sget-boolean v2, Lufu;->b:Z

    nop

    nop

    nop

    if-eqz v2, :cond_f

    nop

    nop

    invoke-static {v0, v1}, Lunu;->a(Ljava/lang/Throwable;Luao;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    :cond_f
    invoke-static {v0}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ltzy;->t(Ljava/lang/Object;)V

    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :cond_10
    iget-object v2, v8, Luio;->c:Luep;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Luep;->b()J

    move-result-wide v12

    nop

    sget v2, Luiq;->b:I

    nop

    nop

    nop

    int-to-long v2, v2

    nop

    nop

    nop

    div-long v4, v12, v2

    nop

    nop

    nop

    rem-long v2, v12, v2

    nop

    nop

    nop

    long-to-int v10, v2

    nop

    nop

    nop

    nop

    iget-wide v2, v1, Luix;->b:J

    nop

    cmp-long v2, v2, v4

    nop

    nop

    if-eqz v2, :cond_11

    nop

    nop

    invoke-virtual {v8, v4, v5, v1}, Luio;->o(JLuix;)Luix;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    move-object v15, v2

    nop

    nop

    nop

    nop

    goto :goto_61

    nop

    nop

    nop

    nop

    :cond_11
    move-object v15, v1

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object v1, v8

    nop

    nop

    nop

    move-object v2, v15

    nop

    nop

    nop

    nop

    move v3, v10

    nop

    nop

    move-wide v4, v12

    nop

    nop

    move-object/from16 v6, p0

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Luio;->k(Luix;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    sget-object v2, Luiq;->m:Lunv;

    nop

    nop

    if-ne v1, v2, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v15, v10}, Luio;->E(Luib;Luix;I)V

    goto/16 :goto_48

    nop

    nop

    :cond_12
    sget-object v2, Luiq;->o:Lunv;

    nop

    nop

    nop

    if-ne v1, v2, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Luio;->c()J

    move-result-wide v1

    nop

    cmp-long v1, v12, v1

    nop

    nop

    nop

    if-gez v1, :cond_13

    nop

    invoke-virtual {v15}, Lumw;->p()V

    :cond_13
    move-object v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :cond_14
    sget-object v2, Luiq;->n:Lunv;

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_16

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Lumw;->p()V

    iput-object v1, v0, Luii;->a:Ljava/lang/Object;

    nop

    iput-object v11, v0, Luii;->b:Lufa;

    nop

    iget-object v0, v8, Luio;->a:Lubk;

    nop

    if-eqz v0, :cond_15

    nop

    nop

    nop

    nop

    new-instance v11, Luik;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v0, v1, v14}, Luik;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_15
    :goto_62
    invoke-virtual {v9, v7, v11}, Lufa;->e(Ljava/lang/Object;Lubp;)V

    goto/16 :goto_48

    nop

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "unexpected"

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_17
    invoke-virtual {v10}, Lumw;->p()V

    iput-object v1, v0, Luii;->a:Ljava/lang/Object;

    nop

    nop

    iput-object v11, v0, Luii;->b:Lufa;

    nop

    iget-object v0, v8, Luio;->a:Lubk;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_15

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Luik;

    nop

    invoke-direct {v11, v0, v1, v14}, Luik;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Luio;->m()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_a
    iput-object v1, p0, Luii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Luiq;->l:Lunv;

    nop

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

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_d
    iget-object p0, p0, Luii;->c:Luio;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Luiq;->p:Lunv;

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

    :goto_13
    invoke-static {p0}, Lunu;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Luii;->a:Ljava/lang/Object;

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

    :goto_15
    const-string v0, "`hasNext()` has not been invoked"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    sget-object v1, Luiq;->p:Lunv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    const v0, 0x9

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
.end method
