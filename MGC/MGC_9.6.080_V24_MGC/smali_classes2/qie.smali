.class final Lqie;
.super Lqfg;
.source "PG"


# instance fields
.field final synthetic a:Lqio;


# direct methods
.method public constructor <init>(Lqio;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqie;->a:Lqio;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lqfg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 17

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, v0, Lqio;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    aget v9, v9, v5

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v0, Lqie;->a:Lqio;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v6, v0, Lqie;->a:Lqio;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5
    iget-object v10, v10, Lqio;->j:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_7
    aget v8, v2, v8

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v9, v7

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_a
    iget v7, v2, Lqjn;->b:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_c
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v10, Lqjq;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Lqjf;->k()V

    :goto_12
    goto/32 :goto_3f

    nop

    nop

    :goto_13
    check-cast v3, Lqje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3}, Lqoe;->M(I)Lqfc;

    move-result-object v3

    nop

    :try_start_0
    iget v2, v2, Lqjm;->b:I

    nop

    iget-object v6, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lqio;->f:Ljava/util/Map;

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    :cond_1
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    const/16 v8, 0x1403

    nop

    nop

    nop

    if-eqz v7, :cond_c

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Ljava/util/Map$Entry;

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    nop

    nop

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v10

    nop

    nop

    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v10, v9, :cond_1

    nop

    new-instance v9, Lqil;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v10}, Lqil;-><init>(I)V

    invoke-virtual {v3, v9}, Lqez;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v9, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    iget-object v9, v9, Lqio;->c:Lqjy;

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Lqjy;->d(I)Lqgr;

    move-result-object v9

    nop

    nop

    invoke-interface {v9}, Lqgr;->c()I

    move-result v9

    nop

    const/4 v11, 0x4

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v11, :cond_2

    nop

    move v13, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    move v13, v5

    nop

    nop

    :goto_16
    iget-object v9, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    iget-object v9, v9, Lqio;->c:Lqjy;

    nop

    nop

    nop

    iget-object v9, v9, Lqjy;->a:Lqhm;

    nop

    nop

    invoke-virtual {v9}, Lqia;->e()Lqjl;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Lqje;

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lqio;->c:Lqjy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Lqjy;->c(I)I

    move-result v11

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lqio;->c:Lqjy;

    nop

    nop

    invoke-virtual {v9, v7}, Lqjy;->d(I)Lqgr;

    move-result-object v9

    nop

    nop

    sget-object v12, Lqhd;->a:Lqgx;

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v12, :cond_3

    nop

    nop

    nop

    const/16 v8, 0x1400

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v12, v8

    nop

    goto/16 :goto_18

    nop

    :cond_3
    sget-object v12, Lqhd;->d:Lqhc;

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v12, :cond_4

    nop

    nop

    nop

    nop

    const/16 v8, 0x1401

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    sget-object v12, Lqhd;->b:Lqgv;

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v12, :cond_5

    nop

    nop

    nop

    nop

    const/16 v8, 0x1402

    nop

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    :cond_5
    sget-object v12, Lqhd;->e:Lqha;

    nop

    nop

    if-ne v9, v12, :cond_6

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    :cond_6
    sget-object v8, Lqhd;->c:Lqgw;

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v8, :cond_7

    nop

    nop

    nop

    const/16 v8, 0x1404

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_7
    sget-object v8, Lqhd;->f:Lqhb;

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v8, :cond_8

    nop

    nop

    nop

    nop

    const/16 v8, 0x1405

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_8
    sget-object v8, Lqhd;->g:Lqgs;

    nop

    if-ne v9, v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x140b

    nop

    goto :goto_17

    nop

    nop

    nop

    :cond_9
    sget-object v8, Lqhd;->h:Lqgt;

    nop

    nop

    if-ne v9, v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x1406

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    nop

    :goto_18
    iget-object v8, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lqio;->c:Lqjy;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Lqjy;->b(I)I

    move-result v14

    nop

    iget-object v8, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    iget-object v8, v8, Lqio;->c:Lqjy;

    nop

    nop

    nop

    nop

    move v9, v5

    nop

    nop

    nop

    nop

    nop

    move v15, v9

    nop

    nop

    nop

    :goto_19
    if-ge v9, v7, :cond_a

    nop

    nop

    invoke-virtual {v8, v9}, Lqjy;->b(I)I

    move-result v16

    nop

    iget v4, v8, Lqjy;->c:I

    nop

    nop

    nop

    nop

    nop

    mul-int v16, v16, v4

    nop

    nop

    nop

    nop

    nop

    add-int v15, v15, v16

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_a
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    nop

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    const-string v2, "No Gl type for attribute type "

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_c
    iget-object v2, v0, Lqie;->a:Lqio;

    nop

    nop

    iget-object v4, v2, Lqio;->d:Lqjb;

    nop

    nop

    nop

    if-eqz v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v4, Lqjb;->a:Lqhm;

    nop

    invoke-virtual {v2}, Lqia;->e()Lqjl;

    move-result-object v2

    nop

    nop

    check-cast v2, Lqje;

    nop

    invoke-virtual {v2}, Lqje;->b()V

    iget-object v2, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    iget-object v2, v2, Lqio;->d:Lqjb;

    nop

    nop

    iget-object v2, v2, Lqjb;->a:Lqhm;

    nop

    nop

    nop

    invoke-virtual {v2}, Lqia;->e()Lqjl;

    move-result-object v2

    nop

    check-cast v2, Lqje;

    nop

    nop

    iget-object v2, v0, Lqie;->a:Lqio;

    nop

    nop

    iget v4, v2, Lqio;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqio;->d:Lqjb;

    nop

    nop

    nop

    nop

    iget v2, v2, Lqjb;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v2, v8, v5}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    iget v4, v2, Lqio;->b:I

    nop

    nop

    nop

    iget-object v2, v2, Lqio;->c:Lqjy;

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Lqjy;->c:I

    nop

    nop

    nop

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-le v7, v9, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_e
    goto/32 :goto_42

    nop

    nop

    :goto_1e
    goto :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_11

    nop

    nop

    :goto_21
    move v7, v5

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_23
    invoke-interface {v7, v2}, Lqin;->a(Lqjn;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v6, v7, :cond_10

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v7, v6, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Lqfc;->close()V

    goto/32 :goto_35

    nop

    nop

    :goto_28
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2a
    iget-object v6, v6, Lqio;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v10, v8}, Lqjn;->b(Ljava/lang/String;)I

    move-result v8

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2f
    aget v6, v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    add-int/2addr v7, v4

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, v3, Lqjy;->a:Lqhm;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_32
    check-cast v7, Lqin;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_33
    aget v9, v9, v5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x16

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lqie;->a:Lqio;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v10}, Lqia;->e()Lqjl;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v8, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v10, v11, v9, v5}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v8, v8, Lqim;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v9, v8, Lqim;->c:Lqia;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v9, v9, Lqjq;->c:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_42
    sget v9, Lqio;->a:I

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_43
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v1, Lqjf;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_45
    const-string v1, "Unit count returned by OpenGL is outside of valid range!"

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, v0, Lqie;->a:Lqio;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v3, v3, Lqio;->f:Ljava/util/Map;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_49
    throw v0

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v6, v7, v8, v2}, Landroid/opengl/GLES30;->glViewport(IIII)V

    :goto_4d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-array v9, v4, [I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v2, Lqjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_50
    invoke-virtual {v10}, Lqia;->e()Lqjl;

    move-result-object v10

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_52
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v11, 0x8d68

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const v7, 0x8b8d

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_57
    if-lez v0, :cond_11

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_61

    nop

    :goto_58
    invoke-virtual {v9}, Lqia;->e()Lqjl;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_59
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v1}, Lqjf;->i()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v3}, Lqia;->e()Lqjl;

    move-result-object v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5e
    const v10, 0x8b4d

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v2, v2, Lqio;->j:Lqjs;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_60
    aget v6, v2, v5

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_7e

    nop

    :goto_62
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v7, :cond_12

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-array v9, v4, [I

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_65
    iget v10, v10, Lqjq;->c:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_66
    iget-object v10, v8, Lqim;->c:Lqia;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_67
    move v7, v9

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_68
    invoke-virtual {v3}, Lqje;->b()V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    aget v7, v2, v4

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

    nop

    :goto_6a
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast v10, Lqjq;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_6e
    iget-object v10, v8, Lqim;->b:Lqio;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_6f
    aget v2, v2, v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_70
    if-gez v9, :cond_13

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_13
    goto/32 :goto_7a

    nop

    nop

    :goto_71
    check-cast v9, Lqjq;

    nop

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

    :goto_72
    invoke-virtual {v10}, Lqjq;->e()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2}, Lqia;->e()Lqjl;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_74
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/32 :goto_67

    nop

    nop

    :goto_75
    move-object v1, v0

    nop

    nop

    :try_start_1
    invoke-virtual {v3}, Lqfc;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string v2, " are supported!"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_77
    const-string v2, "Attempting to bind "

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const v10, 0x84c0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v8, Lqim;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7a
    if-le v9, v3, :cond_14

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_7b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v6, v6, Lqio;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_7d
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7f
    new-array v6, v4, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_80
    const-string v2, " textures at once, but only up to "

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_81
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    :goto_82
    check-cast v10, Lqjn;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v3, v3, Lqio;->c:Lqjy;

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

    :goto_84
    if-nez v8, :cond_15

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5a

    nop

    nop

    :goto_85
    invoke-static {v10, v9, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_87
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_88
    add-int/2addr v10, v7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_89
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_76

    nop

    nop

    :goto_8a
    move-object/from16 v0, p0

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

    :goto_8b
    move-object v2, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8c
    iget-object v2, v2, Lqio;->h:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8d
    if-gtz v9, :cond_16

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_28

    nop

    nop

    :goto_8e
    iget-object v3, v0, Lqie;->a:Lqio;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v10}, Lqia;->e()Lqjl;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :goto_91
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v10, v8, Lqim;->c:Lqia;

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

    :goto_93
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_94
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_95
    iget-object v6, v0, Lqie;->a:Lqio;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop
.end method
