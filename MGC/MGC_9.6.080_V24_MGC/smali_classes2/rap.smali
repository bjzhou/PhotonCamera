.class public final Lrap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lrap;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 26

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1
    throw v2

    nop

    nop

    :goto_2
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Lraq;->c(Lrnb;)Ljava/io/File;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Lhdn;->C(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object v2

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

    nop

    :goto_6
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lshf;->g(Ljava/io/File;)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_3f

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, Lrgw;->ae(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :goto_e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Unsupported version: "

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, v2, Lrap;->a:I

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

    :goto_11
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_14
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Lraq;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lraq;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lras;

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

    :goto_19
    invoke-direct {v2}, Lras;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    :goto_1b
    invoke-direct {v1}, Lraq;-><init>()V

    goto/32 :goto_6a

    nop

    nop

    :goto_1c
    move-object v1, v0

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

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

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v2, v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x15

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

    :goto_24
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    nop

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_26
    check-cast v0, Ljava/io/File;

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

    nop

    :goto_27
    new-instance v1, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v1

    nop

    nop

    nop

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ltjn;->r()J

    move-result-wide v14

    nop

    nop

    long-to-int v3, v14

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    ushr-long/2addr v14, v4

    nop

    nop

    nop

    nop

    nop

    cmp-long v17, v14, v6

    nop

    nop

    if-nez v17, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->x()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v19, v6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v21, v14

    nop

    goto :goto_29

    nop

    nop

    nop

    :cond_5
    add-long/2addr v14, v12

    nop

    nop

    const-wide v17, 0x1fffffffffffffffL

    nop

    nop

    cmp-long v17, v14, v17

    nop

    if-gtz v17, :cond_c

    nop

    nop

    move-wide/from16 v19, v14

    nop

    nop

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    :goto_29
    and-int/lit8 v3, v3, 0x7

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_a

    nop

    if-eq v3, v5, :cond_a

    nop

    nop

    nop

    nop

    const/4 v14, 0x2

    nop

    if-eq v3, v14, :cond_9

    nop

    nop

    if-eq v3, v4, :cond_8

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    if-eq v3, v4, :cond_7

    nop

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lqwn;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->F()[B

    move-result-object v25

    nop

    nop

    nop

    nop

    const-wide/16 v23, 0x0

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    invoke-direct/range {v18 .. v25}, Lqwn;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    goto/16 :goto_2a

    nop

    nop

    :cond_6
    new-instance v0, Ltky;

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized flag type "

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v3}, Ltky;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    new-instance v4, Lqwn;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->x()Ljava/lang/String;

    move-result-object v25

    nop

    const-wide/16 v23, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v18 .. v25}, Lqwn;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    goto :goto_2a

    nop

    :cond_8
    new-instance v4, Lqwn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->b()D

    move-result-wide v15

    nop

    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v23

    nop

    const/16 v25, 0x0

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v18 .. v25}, Lqwn;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    goto :goto_2a

    nop

    nop

    nop

    :cond_9
    new-instance v4, Lqwn;

    nop

    invoke-virtual {v0}, Ltjn;->r()J

    move-result-wide v23

    nop

    nop

    nop

    nop

    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v18 .. v25}, Lqwn;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    goto :goto_2a

    nop

    :cond_a
    const/4 v14, 0x2

    nop

    new-instance v4, Lqwn;

    nop

    nop

    const-wide/16 v23, 0x0

    nop

    const/16 v25, 0x0

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v18 .. v25}, Lqwn;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    :goto_2a
    iget-wide v14, v4, Lqwn;->a:J

    nop

    nop

    nop

    cmp-long v3, v14, v6

    nop

    if-eqz v3, :cond_b

    nop

    nop

    move-wide v12, v14

    nop

    nop

    nop

    nop

    :cond_b
    invoke-virtual {v10, v4}, Lrze;->m(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    const/4 v4, 0x2

    nop

    goto/16 :goto_2e

    nop

    nop

    :cond_c
    new-instance v0, Ltky;

    nop

    nop

    nop

    const-string v3, "Flag name larger than max size"

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ltky;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_d
    new-instance v0, Ltky;

    nop

    nop

    const-string v3, "Negative number of flags"

    nop

    invoke-direct {v0, v3}, Ltky;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_2
    iget-object v3, v1, Lqwm;->a:Ljava/util/zip/Inflater;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->reset()V

    throw v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2b
    if-nez v2, :cond_e

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

    :cond_e
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_64

    nop

    nop

    :goto_2c
    return-object v0

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v0}, Lras;->b(Lrnb;)Ljava/io/InputStream;

    move-result-object v2

    nop

    :try_start_4
    invoke-static {v2}, Ltjn;->K(Ljava/io/InputStream;)Ltjn;

    move-result-object v0

    nop

    nop

    nop

    sget-object v8, Lqwp;->a:Lqwp;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->k()I

    move-result v8

    nop

    if-gt v8, v5, :cond_16

    nop

    nop

    nop

    invoke-virtual {v0}, Ltjn;->k()I

    invoke-virtual {v0}, Ltjn;->n()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ltjn;->e(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v8

    nop

    nop

    nop

    nop

    sget-object v9, Lqwk;->a:Lqwk;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->o()Ltkg;

    move-result-object v9

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    sget-object v10, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    invoke-virtual {v10, v9}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ltjo;->p(Ltjn;)Ltjo;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-interface {v10, v9, v11, v8}, Ltmf;->l(Ljava/lang/Object;Ltjo;Ltjv;)V

    invoke-interface {v10, v9}, Ltmf;->g(Ljava/lang/Object;)V
    :try_end_5
    .catch Ltky; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ltmn; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v9}, Ltkg;->E(Ltkg;)V

    check-cast v9, Lqwk;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ltjn;->A(I)V

    invoke-virtual {v0}, Ltjn;->F()[B

    move-result-object v0

    nop

    new-instance v1, Lqwm;

    nop

    invoke-direct {v1}, Lqwm;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v8, v1, Lqwm;->a:Ljava/util/zip/Inflater;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v0}, Ljava/util/zip/Inflater;->setInput([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v0, Lqwl;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqwl;-><init>(Lqwm;)V

    invoke-static {v0}, Ltjn;->K(Ljava/io/InputStream;)Ltjn;

    move-result-object v0

    nop

    nop

    nop

    sget-object v8, Lqwo;->a:Lqwo;

    nop

    nop

    invoke-virtual {v0}, Ltjn;->j()I

    move-result v8

    nop

    nop

    nop

    nop

    if-ltz v8, :cond_d

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Lrze;

    nop

    nop

    sget-object v11, Lsav;->a:Lsav;

    nop

    nop

    invoke-direct {v10, v11}, Lrze;-><init>(Ljava/util/Comparator;)V

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    move-wide v12, v6

    nop

    nop

    nop

    :goto_2e
    if-lt v11, v8, :cond_4

    nop

    nop

    nop

    nop

    new-instance v0, Lqwo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lrze;->l()Lrzg;

    move-result-object v3

    nop

    nop

    nop

    invoke-direct {v0, v3}, Lqwo;-><init>(Lrzg;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v3, v1, Lqwm;->a:Ljava/util/zip/Inflater;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->reset()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v1}, Lqwm;->close()V

    new-instance v1, Lqwp;

    nop

    invoke-direct {v1, v0, v9}, Lqwp;-><init>(Lqwo;Lqwk;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v5, 0x1

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

    :goto_30
    goto :goto_36

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_62

    nop

    nop

    :goto_32
    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    check-cast v2, Landroid/net/Uri;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v2}, Lrgw;->ae(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :goto_36
    goto/32 :goto_b

    nop

    nop

    :goto_37
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_10

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_10
    :try_start_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Ljava/io/FileNotFoundException;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Lrnb;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3c
    move-object v3, v0

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v1}, Lqwm;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/32 :goto_65

    nop

    nop

    :goto_3d
    const/high16 v1, 0x30000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    const-string v2, "Child %s could not be opened"

    nop

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

    :goto_42
    invoke-virtual {v0, v2}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v2, Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-wide/16 v6, 0x0

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

    :goto_46
    if-nez v3, :cond_11

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v2}, Lhdn;->C(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object v2

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

    :goto_48
    if-lez v0, :cond_12

    nop

    goto/32 :goto_6e

    nop

    :cond_12
    goto/32 :goto_6d

    nop

    :goto_49
    throw v0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-object v0

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Lraq;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4e
    throw v1

    nop

    :goto_4f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_50
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v3

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    instance-of v1, v1, Ltky;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ltky;

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    :cond_13
    throw v0

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

    nop

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    nop

    nop

    nop

    instance-of v1, v1, Ltky;

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ltky;

    nop

    throw v0

    nop

    nop

    nop

    nop

    :cond_14
    new-instance v1, Ltky;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ltky;-><init>(Ljava/io/IOException;)V

    throw v1

    nop

    :catch_2
    move-exception v0

    nop

    invoke-virtual {v0}, Ltmn;->a()Ltky;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Ltky;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_15

    nop

    new-instance v1, Ltky;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ltky;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :cond_15
    throw v0

    nop

    nop

    nop

    :cond_16
    new-instance v0, Ltky;

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Current version is: 1"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ltky;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v2, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_54
    const v0, 0x16

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v1}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v2}, Lhdn;->J(Landroid/net/Uri;)Z

    move-result v3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v1}, Lraq;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_58
    check-cast v0, Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object v1, v0

    nop

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

    :goto_5a
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5c
    if-ne v2, v4, :cond_17

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_17
    goto/32 :goto_27

    nop

    nop

    :goto_5d
    add-long/2addr v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_5f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v1, Ljava/io/RandomAccessFile;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_61
    if-eqz v2, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_18
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v2}, Lhdn;->I(Landroid/net/Uri;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v0, Lrnb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_20

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_51

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v0, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, v0, Lrnb;->f:Ljava/lang/Object;

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

    :goto_6a
    invoke-virtual {v1}, Lraq;->b()V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6b
    const-string v2, "rw"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_2

    nop

    nop

    :goto_6e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v0, v1}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_70
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop
.end method
