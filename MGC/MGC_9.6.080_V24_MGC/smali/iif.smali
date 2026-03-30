.class public final synthetic Liif;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppc;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Liif;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

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

    :goto_3
    iput p2, p0, Liif;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 17

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lppf;

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

    nop

    :goto_1
    iget v8, v3, Lppf;->h:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Liif;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_16

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface/range {v11 .. v16}, Liym;->b(FFFJ)V

    goto/32 :goto_42

    nop

    nop

    :goto_8
    iget-object v2, v0, Liif;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v3, Lppf;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iget-wide v2, v3, Lppf;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v4, v2, Liig;->b:Z

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Liif;->b:I

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_f
    if-ne v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v5, v3, Lppf;->e:J

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_13
    invoke-interface/range {v5 .. v10}, Liym;->b(FFFJ)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iget v12, v3, Lppf;->f:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    neg-float v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    iget-object v11, v2, Liig;->a:Liym;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    goto :goto_2a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Liif;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_24
    iget v7, v3, Lppf;->g:F

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

    :goto_25
    invoke-virtual/range {v4 .. v9}, Lcom/google/googlex/gcam/GyroSampleVector;->b(JFFF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    iget v6, v3, Lppf;->f:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    neg-float v14, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v2, Liig;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_2a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v9, v3, Lppf;->e:J

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

    :goto_2e
    move-wide v15, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v8, v3, Lppf;->g:F

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    iget v2, v3, Lppf;->h:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_33
    iget-object v5, v2, Liig;->a:Liym;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    iget v9, v3, Lppf;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v3, Lppf;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_36
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_37
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1e

    nop

    nop

    :goto_39
    iget v7, v3, Lppf;->f:F

    nop

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

    :goto_3a
    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3b
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v4, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v4, Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_16

    nop

    nop

    :goto_43
    goto/32 :goto_18

    nop

    nop

    nop
.end method
