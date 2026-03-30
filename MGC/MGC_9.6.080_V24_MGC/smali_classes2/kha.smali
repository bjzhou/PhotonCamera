.class public final synthetic Lkha;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkhe;

.field public final synthetic b:Lpge;

.field public final synthetic c:Lpcu;

.field public final synthetic d:Lkjb;

.field public final synthetic e:Lkmq;

.field public final synthetic f:Lkjj;


# direct methods
.method public synthetic constructor <init>(Lkhe;Lpge;Lpcu;Lkjb;Lkmq;Lkjj;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lkha;->d:Lkjb;

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

    :goto_1
    iput-object p5, p0, Lkha;->e:Lkmq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lkha;->b:Lpge;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkha;->a:Lkhe;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Lkha;->f:Lkjj;

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

    :goto_5
    iput-object p3, p0, Lkha;->c:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 24

    goto/32 :goto_52

    nop

    nop

    :goto_0
    if-eqz v4, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Failed to acquire metadata from the first frame."

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3
    iget-object v11, v0, Lkha;->b:Lpge;

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5
    move-object v2, v0

    nop

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_7
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V

    goto/32 :goto_4c

    nop

    nop

    :goto_8
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, v12

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_56

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

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    const-string v1, "Failed to initiate HDR plus shot capture."

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c
    move-object/from16 v19, v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, v0, Lkhe;->d:Llgc;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    move-object v10, v14

    nop

    nop

    :try_start_2
    invoke-direct/range {v2 .. v10}, Lkhb;-><init>(Lkhe;Lkjj;JLpro;Lpol;Lpge;Lkjb;)V

    new-instance v10, Lkhc;

    nop

    nop

    move-object v2, v10

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    move-object v4, v12

    nop

    nop

    nop

    nop

    move-wide/from16 v5, v21

    nop

    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    move-object/from16 v8, v20

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v19

    nop

    move-object/from16 v20, v13

    nop

    nop

    move-object v13, v10

    nop

    nop

    nop

    move-object v10, v11

    nop

    nop

    nop

    move-object v11, v14

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v11}, Lkhc;-><init>(Lkhe;Lkjj;JLpro;Lprw;Lpol;Lpge;Lkjb;)V

    invoke-static {}, Llxm;->a()Llxm;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + used internally by Moments. Not a shutter initiated shot"

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v15, v2}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v2, v0, Lkhe;->f:Liof;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Liof;->c(Llxm;)Linc;

    move-result-object v2

    nop

    nop

    sget-object v3, Lhna;->a:Lhmo;

    nop

    nop

    nop

    new-instance v7, Lcom/google/googlex/gcam/PostviewParams;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Lcom/google/googlex/gcam/PostviewParams;-><init>()V

    iget-object v3, v0, Lkhe;->b:Lpnu;

    nop

    nop

    invoke-static {v3}, Ltbt;->i(Lpnu;)Lpou;

    move-result-object v3

    nop

    iget-object v3, v3, Lpou;->b:Lpck;

    nop

    nop

    nop

    iget v4, v3, Lpck;->a:I

    nop

    nop

    nop

    nop

    iget v6, v3, Lpck;->b:I

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    if-le v4, v6, :cond_2

    nop

    div-int/lit8 v4, v4, 0x2

    nop

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    goto :goto_12

    nop

    :cond_2
    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    iget v3, v3, Lpck;->b:I

    nop

    nop

    nop

    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    :goto_12
    iget-object v3, v0, Lkhe;->e:Lhoh;

    nop

    sget-object v4, Lhna;->H:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-boolean v3, v12, Lkjj;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    sget-object v3, Lsya;->f:Lsya;

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Lcom/google/googlex/gcam/PostviewParams;->b(Lsya;)V

    iget-object v3, v2, Linc;->l:Lryw;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    new-instance v3, Lryw;

    nop

    nop

    nop

    invoke-direct {v3}, Lryw;-><init>()V

    iput-object v3, v2, Linc;->l:Lryw;

    nop

    nop

    :cond_3
    iget-object v2, v2, Linc;->l:Lryw;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_13

    nop

    nop

    :cond_4
    sget-object v1, Lsya;->b:Lsya;

    nop

    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/PostviewParams;->b(Lsya;)V

    iget-object v1, v2, Linc;->j:Lryw;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    new-instance v1, Lryw;

    nop

    nop

    nop

    invoke-direct {v1}, Lryw;-><init>()V

    iput-object v1, v2, Linc;->j:Lryw;

    nop

    nop

    nop

    :cond_5
    iget-object v1, v2, Linc;->j:Lryw;

    nop

    nop

    nop

    invoke-virtual {v1, v13}, Lryw;->h(Ljava/lang/Object;)V

    :goto_13
    new-instance v6, Llko;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lkto;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lkto;-><init>()V

    new-instance v2, Lkua;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lkua;-><init>()V

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    move-object/from16 v4, v20

    nop

    nop

    invoke-direct {v6, v4, v3, v1, v2}, Llko;-><init>(Lkmq;Llxa;Lktq;Lktr;)V

    invoke-virtual/range {v23 .. v23}, Loel;->d()Lphh;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lphh;->d()Lpnx;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v3, v0, Lkhe;->a:Likv;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lkvu;->b:Lkvu;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v1

    nop

    nop

    nop

    nop

    move-object/from16 v9, v16

    nop

    nop

    nop

    invoke-interface/range {v3 .. v9}, Likv;->E(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;)Linb;

    move-result-object v2

    nop

    nop

    const-string v3, "launched HDR+ shot"

    nop

    nop

    nop

    nop

    invoke-interface {v15, v3}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    move-object v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    iget-object v15, v0, Lkha;->c:Lpcu;

    nop

    :try_start_4
    invoke-static {v11}, Lcom/google/android/apps/camera/moments/MomentsUtils;->a(Lpge;)Lsui;

    move-result-object v2

    nop

    invoke-interface {v2}, Lsui;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v16, Lpro;

    nop

    nop
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_5a

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v20, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v2, v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v18, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v5, Lpol;

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

    :goto_1c
    move-wide v5, v8

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

    :goto_1d
    move-object/from16 v18, v5

    nop

    :goto_1e
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v3, v17

    nop

    :try_start_5
    invoke-interface {v15, v3}, Lpcu;->h(Ljava/lang/String;)V

    new-instance v0, Lkhd;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkhd;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v8, v2, Lpgi;->b:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_58

    nop

    nop

    :goto_25
    const-string v1, "metadata get interrupted"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v7, v16

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_3d

    nop

    nop

    :goto_29
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v10, v3, v11}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v12, v0, Lkha;->f:Lkjj;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_7
    iget-object v1, v0, Lkhe;->a:Likv;

    nop

    nop

    invoke-interface {v1, v2}, Likv;->y(Linb;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->WXrcoqZtoghQ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v15, v1}, Lpcu;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lkhe;->a:Likv;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Likv;->m(Linb;)V

    new-instance v0, Lkhd;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/RuntimeException;

    nop

    const-string v2, "Couldn\'t end capture"

    nop

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkhd;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual/range {v18 .. v18}, Lpol;->k()Lprw;

    invoke-virtual/range {v19 .. v19}, Lpol;->k()Lprw;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_34
    move-object v1, v4

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

    :goto_35
    move-object/from16 v8, v19

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v11}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v15, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v2, Lpok;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3a
    move-object/from16 v17, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v7, v4

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    move-object v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v23, v10

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

    :goto_40
    move-object v2, v4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_41
    const-string v1, "Could not get a raw image from input frame"

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

    :goto_42
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_44
    :try_start_9
    iget-object v3, v0, Lkhe;->a:Likv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Likv;->q(Linb;)V

    const-string v3, "Submitting payload frame "

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v4, v21

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v3}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v15, v3}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lkhe;->a:Likv;

    nop

    sget-object v8, Lsxd;->c:Lsxd;

    nop

    const/4 v6, 0x0

    nop

    move-object v4, v2

    nop

    nop

    nop

    move-object v5, v1

    nop

    nop

    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v18

    nop

    invoke-interface/range {v3 .. v9}, Likv;->C(Linb;Lpnx;ILpro;Lsxd;Lprw;)V

    iget-object v1, v0, Lkhe;->a:Likv;

    nop

    nop

    new-instance v3, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-interface {v1, v2, v3}, Likv;->x(Linb;Lcom/google/googlex/gcam/BurstSpec;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_7

    nop

    const-string v1, "Couldn\'t end burst payload, aborting shot."

    nop

    nop

    nop

    invoke-interface {v15, v1}, Lpcu;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lkhe;->a:Likv;

    nop

    nop

    invoke-interface {v0, v2}, Likv;->m(Linb;)V

    new-instance v0, Lkhd;

    nop

    new-instance v1, Ljava/lang/RuntimeException;

    nop

    const-string v2, "Couldn\'t end burst payload"

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkhd;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V

    goto/32 :goto_45

    nop

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    :goto_49
    move-object v3, v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4a
    throw v1

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_1e

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4c
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_b
    const-string v1, "Couldn\'t start ZSL capture"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v15, v1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v14, v0}, Lkjb;->b(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4d
    move-wide/from16 v21, v8

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v5, v3, v2}, Lpol;-><init>(Lprw;I)V

    :try_start_d
    new-instance v6, Lpol;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v7, v2}, Lpol;-><init>(Lprw;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    new-instance v4, Lkhb;

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v2, v8, v9}, Lpok;-><init>(J)V

    goto/32 :goto_14

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v13, v0, Lkha;->e:Lkmq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const v0, 0x1

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

    :goto_53
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v14, v0, Lkha;->d:Lkjb;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_55
    move-object/from16 v19, v6

    nop

    nop

    :goto_56
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v15, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v10, Loel;

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

    :goto_5a
    iget-object v0, v0, Lkha;->a:Lkhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v10}, Loel;->h()Lprw;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v10}, Loel;->g()Lprw;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
