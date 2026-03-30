.class public final synthetic Lttk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

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
    iput p2, p0, Lttk;->b:I

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

    :goto_2
    iput-object p1, p0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lutk;I[I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

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

    nop

    nop

    :goto_3
    iput p2, p0, Lttk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 24

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_1
    move-object v1, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_9b

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lutk;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, v2, Luti;->d:Lutk;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :goto_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Lutk;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_a
    move-object v2, v1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v1, Luti;->d:Lutk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_2
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Lutk;->s:I

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_f
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v2, Luti;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    :goto_19
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_1
    move-object v2, v0

    nop

    check-cast v2, Luti;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Luti;->d:Lutk;

    nop

    nop

    iget-object v3, v2, Lutk;->p:Lusy;

    nop

    iget v4, v2, Lutk;->o:I

    nop

    nop

    nop

    nop

    int-to-long v7, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lutk;->u:Luso;

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    invoke-virtual {v2}, Luso;->a()Ljava/util/Map;

    move-result-object v2

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    check-cast v4, Luti;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Luti;->d:Lutk;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lutk;->u:Luso;

    nop

    nop

    nop

    iget-object v9, v4, Luso;->c:Ljava/lang/String;

    nop

    iget v4, v4, Luso;->a:I

    nop

    nop

    move/from16 v16, v4

    nop

    nop

    goto :goto_1b

    nop

    nop

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->YpKNHbiwtKy:Ljava/lang/String;

    nop

    move/from16 v16, v5

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    check-cast v4, Luti;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Luti;->d:Lutk;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lutk;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-wide/16 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Ljava/util/Map$Entry;

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    nop

    nop

    nop

    int-to-long v14, v14

    nop

    add-long/2addr v11, v14

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    nop

    nop

    nop

    int-to-long v13, v13

    nop

    nop

    nop

    add-long/2addr v11, v13

    nop

    nop

    nop

    goto :goto_1c

    nop

    nop

    :cond_8
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    goto/16 :goto_1f

    nop

    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    :cond_a
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    if-eqz v15, :cond_e

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    nop

    nop

    check-cast v17, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v17, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    nop

    int-to-long v9, v6

    nop

    add-long/2addr v13, v9

    nop

    nop

    nop

    nop

    :cond_b
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_c

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    :cond_c
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    :cond_d
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    if-eqz v9, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_d

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    int-to-long v9, v9

    nop

    nop

    add-long/2addr v13, v9

    nop

    nop

    goto :goto_1e

    nop

    :cond_e
    :goto_1f
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_13

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/util/List;

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3, v0}, Lutk;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_21
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    :try_start_3
    invoke-static {v4, v5}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v17

    nop

    nop

    nop

    invoke-static {v4, v5}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v4

    nop

    move-object v5, v0

    nop

    nop

    nop

    check-cast v5, Luti;

    nop

    iget-object v5, v5, Luti;->d:Lutk;

    nop

    iget-object v5, v5, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    nop

    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    if-eq v5, v6, :cond_11

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x7

    nop

    nop

    if-eq v5, v6, :cond_10

    nop

    nop

    nop

    nop

    const/16 v6, 0x8

    nop

    nop

    nop

    if-ne v5, v6, :cond_f

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "Internal Cronet error: attempted to report metrics but current state ("

    nop

    nop

    nop

    nop

    nop

    const-string v2, ") is not a done state!"

    nop

    nop

    nop

    nop

    invoke-static {v5, v1, v2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_10
    const/16 v20, 0x1

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_11
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    :goto_23
    move/from16 v20, v6

    nop

    nop

    :goto_24
    new-instance v5, Lusw;

    nop

    nop

    check-cast v0, Luti;

    nop

    nop

    nop

    iget-object v0, v0, Luti;->d:Lutk;

    nop

    iget v6, v0, Lutk;->s:I

    nop

    nop

    iget v15, v0, Lutk;->r:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lutk;->t:Z

    nop

    nop

    nop

    nop

    move-object v9, v5

    nop

    nop

    nop

    move-wide v10, v11

    nop

    nop

    move-wide v12, v13

    nop

    nop

    nop

    move/from16 v22, v15

    nop

    nop

    move-wide v14, v1

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    move/from16 v21, v6

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v0

    nop

    nop

    nop

    invoke-direct/range {v9 .. v23}, Lusw;-><init>(JJJILj$/time/Duration;Lj$/time/Duration;Ljava/lang/String;IIIZ)V

    invoke-virtual {v3, v7, v8, v5}, Lusy;->c(JLusw;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/32 :goto_85

    nop

    nop

    :goto_25
    iput-object v4, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, v0, Lutk;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_53

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2c
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "Service is already bound."

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Lutk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7f

    nop

    nop

    :goto_30
    iget-object v2, v0, Lutk;->f:Ljava/util/List;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lutc;->b()V

    goto/32 :goto_31

    nop

    nop

    :goto_33
    goto/16 :goto_10

    nop

    :goto_34
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_12
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, v0, Lutk;->m:Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Lutk;->f()V

    goto/32 :goto_61

    nop

    nop

    :goto_3a
    new-instance v2, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Lutj;->a()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_3d
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3e
    iput v1, v0, Lutk;->s:I

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

    :goto_3f
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_54

    nop

    nop

    :goto_40
    const-string v2, "Remote exception while getting number of controllers: "

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_41
    if-nez v2, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_2d

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Lutk;->f()V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Luti;->b()V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_45
    iget-object v2, v2, Luti;->d:Lutk;

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

    nop

    :goto_46
    const v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_47
    const-string v3, "VrCtl.ServiceBridge"

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_48
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :goto_49
    :try_start_4
    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v2

    nop

    nop

    nop

    const/16 v4, 0xa

    nop

    nop

    nop

    invoke-virtual {v0, v4, v2}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v3, v2, v5}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->d(II)V

    :goto_4b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4c
    iget-object v3, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v4, "com.google.vr.vrcore.controller.BIND"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_4e
    check-cast v0, Lutk;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4f
    check-cast v1, Luti;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_50
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-boolean v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_52
    iget v2, v0, Lttk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_54
    const-wide/16 v1, -0x1

    nop

    nop

    :goto_55
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b()V

    :goto_58
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_88

    nop

    nop

    :goto_5a
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5c
    iput-object v4, v1, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

    nop

    nop

    :goto_5d
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v1, Luti;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_63
    iget-object v1, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    :try_start_5
    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Luti;

    nop

    iget-object v0, v0, Luti;->a:Lutr;

    nop

    iget-object v0, v0, Lutr;->a:Lrrf;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Loca;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Loca;->a()V

    move-object v2, v0

    nop

    nop

    check-cast v2, Loca;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, v2, Loca;->f:J

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Loca;

    nop

    iget-object v0, v0, Loca;->b:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_64
    const-string v1, "Content-Length"

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_65
    iget-object v0, v1, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

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

    nop

    :goto_66
    iget-object v1, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_6
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Luti;

    nop

    iget-object v0, v0, Luti;->a:Lutr;

    nop

    iget-object v0, v0, Lutr;->a:Lrrf;

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Loca;

    nop

    nop

    nop

    invoke-virtual {v2}, Loca;->a()V

    new-instance v2, Locu;

    nop

    nop

    invoke-direct {v2}, Locu;-><init>()V

    check-cast v0, Loca;

    nop

    nop

    nop

    iget-object v0, v0, Loca;->b:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const-string v3, "onCanceled"

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

    nop

    nop

    :goto_69
    iget-object v1, v0, Lutk;->l:Ljava/lang/String;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v3, "onSucceded"

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0}, Lutc;->b()V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6e
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_70
    if-lez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_18

    nop

    :goto_71
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_73
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v0, v0, Lutk;->n:Lutc;

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

    :goto_76
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->h()V

    :goto_78
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const-string v4, "com.google.vr.vrcore"

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_7c
    check-cast v3, Lqxk;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7d
    return-void

    nop

    :pswitch_6
    goto/32 :goto_6d

    nop

    nop

    :goto_7e
    iput-object v4, v0, Lutk;->l:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v4, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_81
    check-cast v0, Lutj;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_83
    iget-object v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_85
    return-void

    nop

    :catch_5
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-eqz v0, :cond_17

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_87
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_89
    move-object v2, v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_8b
    iget-object v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_8c
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v0, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_8e
    check-cast v2, Luti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8f
    iget-object v3, v3, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_90
    move-object v1, v0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_92
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

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

    nop

    :goto_93
    return-void

    nop

    :goto_94
    goto/32 :goto_3a

    nop

    nop

    :goto_95
    check-cast v0, Lutk;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_96
    check-cast v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_97
    iget-object v0, v0, Lttk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v0, v1, Luti;->d:Lutk;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sget-object v0, Lutk;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v2, v3, v0}, Lutk;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_9b
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_9c
    const/4 v5, 0x0

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_9d
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-boolean v2, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->e()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a1
    iput-boolean v5, v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a2
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v0, v0, Lutk;->n:Lutc;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v1}, Luti;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v0, v0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_a9
    check-cast v0, Lutk;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const-string v0, "Bind failed. Service is not available."

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_ac
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop
.end method
