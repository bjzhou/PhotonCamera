.class public Liub;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqe;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Llxa;

.field private final c:Z

.field private final d:Livp;

.field private final e:Liwb;

.field private final f:Lgii;

.field private final g:Ljava/util/List;

.field private final h:Lpdf;

.field private final i:Z

.field private final j:Lits;

.field private final k:Lhoh;

.field private final l:Lpic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const-string v0, "iub"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    :goto_3
    sput-object v0, Liub;->b:Lsdb;

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

    nop

    nop
.end method

.method public constructor <init>(Lfdo;Llvw;Lpic;Lpdf;Ljqp;Loyn;Lhoh;Lnch;Lits;Landroid/graphics/Bitmap;Z)V
    .locals 15

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v4, v0, Liub;->c:Z

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v4, v0, Liub;->f:Lgii;

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

    :goto_2
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v8, ".vr"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v7, p8

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

    :goto_6
    move/from16 v3, p11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v8, p10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v2, Lits;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v3, 0x7f14058f

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, v6, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    new-instance v6, Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v6, Llvt;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v4, Livp;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const/high16 v0, 0x43870000    # 270.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_15
    new-array v0, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_16
    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_39

    nop

    nop

    :goto_18
    iput-object v7, v0, Liub;->a:Llxa;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_19
    const-class v4, Liwb;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    check-cast v4, Liwb;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v13, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    invoke-interface/range {p4 .. p4}, Lpdf;->g()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v4, v0, Liub;->e:Liwb;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_20
    invoke-static {v4}, Liwa;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const v0, 0xc

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_22
    const-string v3, "imaxProcessing#startSession"

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

    :goto_23
    invoke-interface {v7, v6}, Llxa;->X(Lpck;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_24
    move-object/from16 v5, p3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v7, v2}, Llxa;->V(Lnik;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v2, p9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    move v2, v4

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

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

    :goto_2a
    const/4 v4, 0x0

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

    :goto_2b
    iput-object v4, v0, Liub;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

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

    nop

    :goto_2d
    sget-object v4, Lhmw;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v7}, Llvw;->c(Llxa;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2f
    invoke-interface/range {p6 .. p6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    goto :goto_3c

    nop

    nop

    :goto_31
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v3, v0, Liub;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_33
    invoke-direct {v7, v6, v2, v4, v5}, Llwh;-><init>(Llvt;Ljava/lang/String;Lgii;Llxg;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v1, p4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v2, 0x10e

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v2, v0, Liub;->j:Lits;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_43

    nop

    nop

    :goto_39
    goto/32 :goto_11

    nop

    nop

    :goto_3a
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v0, p10

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

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

    :goto_3f
    invoke-interface {v1, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_40
    goto :goto_36

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v4, v0, Liub;->d:Livp;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface/range {p5 .. p5}, Ljqp;->b()Lgii;

    move-result-object v4

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

    :goto_46
    invoke-interface {v6}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_47
    move-object/from16 v5, p7

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v7, Llwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4a
    invoke-static {v4}, Liwa;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v5, v0, Liub;->l:Lpic;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v7, v0, v2}, Llxa;->ac(Landroid/graphics/Bitmap;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v2, 0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v6, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v1, v0, Liub;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v2, v3, v0}, Lnio;-><init>(I[Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v5, v0, Liub;->k:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v6, v3, v5}, Lpck;-><init>(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v10, 0x0

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

    :goto_57
    if-lez v0, :cond_1

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    :goto_58
    new-instance v2, Lnio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_59
    const-class v4, Livp;

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

    :goto_5a
    invoke-virtual {v7, v5, v6}, Lnch;->e(J)Llxg;

    move-result-object v5

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v13, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v3, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Llqd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liub;->a:Llxa;

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

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string v0, "ImaxProcessingTask-"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Liub;->a:Llxa;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    invoke-interface {p0}, Llxa;->j()Llxm;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final c(Lpbz;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Liub;->g:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/Context;)V
    .locals 27

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_2
    if-lt v4, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_3
    move-object/from16 p1, v2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    :goto_5
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :cond_1
    :try_start_0
    check-cast v2, [B

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_7
    if-nez v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_37

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_9
    move-object/from16 v19, v4

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_b
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_c
    move-object/from16 v1, p0

    nop

    nop

    :goto_d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    :goto_10
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v5, 0x0

    nop

    nop

    :goto_12
    :try_start_1
    array-length v4, v3

    nop

    if-ge v5, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    aget-object v1, v3, v5

    nop

    nop

    nop

    nop

    move-object/from16 v20, v14

    nop

    nop

    move-object/from16 v21, v15

    nop

    nop

    nop

    iget-wide v14, v1, Lpch;->a:J

    nop

    nop

    nop

    move-wide/from16 v23, v14

    nop

    nop

    nop

    iget-wide v14, v1, Lpch;->b:J

    nop

    nop

    nop

    const-wide/16 v25, 0x1

    nop

    nop

    cmp-long v1, v14, v25

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    const-wide/16 v14, 0x0

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_3
    move-wide/from16 v14, v23

    nop

    nop

    :goto_13
    const-wide/16 v23, 0x9

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v14, v23

    nop

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_4

    nop

    nop

    const-string v1, "0"

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    nop

    nop

    if-eq v5, v4, :cond_5

    nop

    const-string v1, ":"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    nop

    move-object/from16 v1, p0

    nop

    move-object/from16 v14, v20

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v15, v21

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move-object/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v21, v15

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_15
    invoke-interface {v5, v1}, Lpbz;->a(Ljava/lang/Object;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_1

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

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v4, Lswr;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_18
    if-nez v21, :cond_7

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lpft;->e()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_30

    nop

    nop

    nop

    move-object/from16 v1, v21

    nop

    nop

    nop

    iget-object v2, v1, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    instance-of v6, v2, [B

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_1c
    move-object v3, v0

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :catch_2
    move-exception v0

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

    nop

    :goto_1e
    goto/16 :goto_66

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v1, v0

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_d4

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7b

    nop

    nop

    :goto_22
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v8, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    nop

    nop

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    invoke-virtual {v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_4b

    nop

    nop

    :goto_24
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_26
    if-lt v6, v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    move-object v3, v0

    nop

    nop

    nop

    :goto_28
    :try_start_7
    sget-object v4, Liub;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    const/16 v4, 0x772

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v4, "Failed to compute panorama"

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_29
    invoke-interface {v5, v1}, Lpbz;->a(Ljava/lang/Object;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 p1, v2

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

    :goto_2d
    if-lez v6, :cond_a

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_55

    nop

    nop

    :goto_2e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/32 :goto_ca

    nop

    nop

    :goto_2f
    goto/16 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v4, v3}, Lswr;-><init>(Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto :goto_35

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 p1, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v19, v4

    nop

    :goto_35
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_36
    move-object v2, v4

    nop

    :goto_37
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v19, v4

    nop

    :goto_39
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_3a
    if-nez v7, :cond_b

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_b
    :try_start_8
    iget-object v7, v1, Liub;->f:Lgii;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lgii;->b()Lrss;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Landroid/location/Location;

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Lpfv;->d(Landroid/location/Location;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_af

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_3c
    iget-object v2, v1, Liub;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v19, v4

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_f1

    nop

    :catch_5
    move-exception v0

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

    :goto_3f
    move v6, v3

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_40
    move v6, v3

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_41
    add-int/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v3, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v21, v15

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_45
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aget-object v4, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_49
    array-length v4, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_b5

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_4c
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4d
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4e
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    array-length v5, v3

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_b1

    nop

    nop

    :goto_4f
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_50
    invoke-virtual {v2}, Lswr;->a()V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v11, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_d
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_8
    :goto_52
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v10, v7

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_55
    goto/16 :goto_fe

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_58
    iget-object v2, v1, Liub;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move v12, v3

    nop

    :goto_5b
    goto/32 :goto_96

    nop

    nop

    :goto_5c
    invoke-direct {v3, v1}, Liua;-><init>(Liub;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 v4, v4, 0x1

    nop

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

    :goto_5e
    move-object/from16 v2, v19

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v3, v0

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_60
    goto/16 :goto_68

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_61
    new-instance v2, Ljava/io/File;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object v1, v0

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 p1, v2

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_64
    move-object v7, v0

    nop

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object v6, v0

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_66
    throw v7

    nop

    nop

    nop

    nop

    nop
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object v3, v0

    nop

    nop

    nop

    :try_start_e
    sget-object v4, Liub;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const-string v5, "Unable to read file for saving"

    nop

    nop

    nop

    const/16 v7, 0x774

    nop

    nop

    nop

    invoke-static {v5, v7, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto :goto_68

    nop

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    move-object v3, v0

    nop

    sget-object v4, Liub;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    const-string v5, "File not found for saving"

    nop

    const/16 v7, 0x773

    nop

    nop

    invoke-static {v5, v7, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_68
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_69
    throw v3

    nop

    :goto_6a
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v19, v4

    nop

    nop

    :goto_6c
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_a8

    nop

    :catch_b
    move-exception v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v18, v5

    nop

    :goto_6f
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_71
    goto :goto_6f

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_72
    move-object/from16 v18, v5

    nop

    :goto_73
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_76
    sub-int v13, v7, v12

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v11, v10, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_77
    goto :goto_80

    nop

    nop

    nop

    :catch_c
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_78
    const v0, 0xa

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_79
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move v3, v6

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_7f
    goto/16 :goto_b7

    nop

    :goto_80
    :try_start_10
    invoke-virtual {v8}, Lpfv;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    nop

    nop

    invoke-virtual {v8, v9, v10}, Lpfv;->g(J)V

    iget-object v7, v8, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    iget-object v8, v1, Liub;->l:Lpic;

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    sget v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lpch;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lpch;->b([Lpch;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lpch;

    move-result-object v11

    nop

    nop

    invoke-static {v11}, Lpch;->b([Lpch;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v12

    nop

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    nop

    invoke-virtual {v7, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lpch;

    move-result-object v14

    nop

    invoke-static {v14}, Lpch;->b([Lpch;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    sget v15, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    nop

    invoke-virtual {v7, v15}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lpft;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    nop

    nop

    invoke-virtual {v7, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lpch;

    move-result-object v3

    nop

    nop

    nop
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v1, v1, Liub;->j:Lits;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 p1, v2

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_83
    move-object/from16 v2, v19

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_84
    move-object/from16 v1, p0

    nop

    nop

    :goto_85
    :try_start_12
    iget-object v2, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_18
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v2, v1, Liub;->g:Ljava/util/List;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v5, Lpbz;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :catch_d
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v10, :cond_e

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_e
    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catch_e
    :goto_8a
    :try_start_14
    throw v2

    nop
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catch_f
    goto/32 :goto_e

    nop

    nop

    :goto_8b
    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8c
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_f
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :catch_10
    move-exception v0

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

    :goto_8f
    return-void

    nop

    :catch_11
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_90
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v2, v19

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move-object v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_28

    nop

    nop

    nop

    :catch_12
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v5, Lpbz;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_96
    if-lt v12, v7, :cond_11

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_97
    move-object/from16 v2, v19

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_99
    invoke-interface {v4, v1}, Lpbz;->a(Ljava/lang/Object;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_9a
    if-nez v2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_12
    :try_start_15
    array-length v6, v2

    nop
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_a5

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1}, Lits;->a()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_a0
    const/4 v3, 0x0

    nop

    :try_start_16
    sget-boolean v5, Lswr;->a:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_15

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lswr;->c:Lswq;

    nop

    nop

    if-eqz v5, :cond_13

    nop

    nop

    nop

    nop

    goto :goto_a1

    nop

    :cond_13
    iget-object v5, v4, Lswr;->d:Landroid/os/Looper;

    nop

    nop

    if-nez v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    const-string v8, "ProgressInterpolatorThread"

    nop

    nop

    nop

    nop

    invoke-direct {v5, v8, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    nop

    :cond_14
    iput-object v5, v4, Lswr;->d:Landroid/os/Looper;

    nop

    new-instance v5, Lswq;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v4, Lswr;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

    nop

    nop

    iget-object v9, v4, Lswr;->d:Landroid/os/Looper;

    nop

    nop

    nop

    invoke-direct {v5, v8, v9}, Lswq;-><init>(Lcom/google/geo/lightfield/processing/ProgressCallback;Landroid/os/Looper;)V

    iput-object v5, v4, Lswr;->c:Lswq;

    nop

    iget-object v5, v4, Lswr;->c:Lswq;

    nop

    nop

    nop

    nop

    iput v6, v5, Lswq;->c:F

    nop

    invoke-virtual {v5}, Lswq;->a()V

    sput-boolean v7, Lswr;->a:Z

    nop

    :cond_15
    :goto_a1
    const v5, 0x3eb33333    # 0.35f

    nop

    invoke-interface {v4, v6, v5}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-object v8, v1, Liub;->d:Livp;

    nop

    nop

    iget-object v9, v1, Liub;->j:Lits;

    nop

    nop

    nop

    invoke-virtual {v9}, Lits;->a()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9, v4}, Livp;->computePose(Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_16

    nop

    nop

    :goto_a2
    move v6, v3

    nop

    nop

    nop

    nop

    nop

    move v7, v6

    nop

    nop

    nop

    nop

    move-object v2, v4

    nop

    nop

    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :cond_16
    iget-boolean v8, v1, Liub;->c:Z

    nop

    const v9, 0x3f75c28f    # 0.96f

    nop

    nop

    nop

    if-eqz v8, :cond_17

    nop

    nop

    nop

    nop

    const v8, 0x3f6e147b    # 0.93f

    nop

    nop

    nop

    invoke-interface {v4, v5, v8}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    goto :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_17
    invoke-interface {v4, v5, v9}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    :goto_a3
    iget-object v5, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    const-string v8, "imaxProcessing#getStitchedPano"

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v5, Liwe;

    nop

    nop

    iget-object v11, v1, Liub;->j:Lits;

    nop

    nop

    nop

    nop

    iget-object v8, v1, Liub;->k:Lhoh;

    nop

    nop

    sget-object v10, Lhmw;->b:Lhmn;

    nop

    nop

    invoke-virtual {v8, v10}, Lhoh;->p(Lhmn;)Z

    move-result v12

    nop

    nop

    iget-object v8, v1, Liub;->k:Lhoh;

    nop

    sget-object v10, Lhmw;->c:Lhmn;

    nop

    nop

    invoke-virtual {v8, v10}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    nop

    nop

    float-to-double v13, v8

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v1, Liub;->k:Lhoh;

    nop

    nop

    sget-object v10, Lhmw;->d:Lhmn;

    nop

    nop

    invoke-virtual {v8, v10}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    float-to-double v7, v8

    nop

    nop

    nop

    nop

    nop

    move-object v10, v5

    nop

    nop

    nop

    move-wide v15, v7

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v10 .. v16}, Liwe;-><init>(Lits;ZDD)V

    iget-boolean v7, v1, Liub;->i:Z

    nop

    nop

    nop

    nop

    iput-boolean v7, v5, Liwe;->c:Z

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v8, Ljava/lang/Thread;

    nop

    new-instance v10, Liwd;

    nop

    invoke-direct {v10, v5, v7, v4}, Liwd;-><init>(Liwe;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    const-string v5, "OfflineOmnistereoStitchThread"

    nop

    invoke-direct {v8, v10, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    invoke-virtual {v8}, Ljava/lang/Thread;->join()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move v4, v6

    nop

    :goto_a5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a7
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_cf

    nop

    nop

    :goto_a9
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_aa
    if-nez v8, :cond_18

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_18
    :try_start_18
    const-string v6, "Model"

    nop

    invoke-virtual {v14, v6, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ab
    if-eqz v9, :cond_19

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Make"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz v10, :cond_1a

    nop

    nop

    nop

    nop

    nop

    const-string v6, "GPSLatitude"

    nop

    invoke-virtual {v14, v6, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz v11, :cond_1b

    nop

    nop

    nop

    nop

    nop

    const-string v6, "GPSLongitude"

    nop

    invoke-virtual {v14, v6, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v12, :cond_1c

    nop

    nop

    const-string v6, "GPSLatitudeRef"

    nop

    nop

    invoke-virtual {v14, v6, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v13, :cond_1d

    nop

    nop

    const-string v6, "GPSLongitudeRef"

    nop

    invoke-virtual {v14, v6, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    if-eqz v1, :cond_1e

    nop

    nop

    nop

    nop

    nop

    const-string v6, "GPSTimeStamp"

    nop

    nop

    invoke-virtual {v14, v6, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    if-eqz v2, :cond_1f

    nop

    nop

    nop

    nop

    const-string v1, "GPSDateStamp"

    nop

    nop

    invoke-virtual {v14, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-eqz v20, :cond_20

    nop

    nop

    nop

    nop

    nop

    const-string v1, "GPSAltitude"

    nop

    move-object/from16 v2, v20

    nop

    invoke-virtual {v14, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :cond_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v7, 0x1

    nop

    :goto_ad
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move-object v2, v4

    nop

    :goto_af
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    new-instance v3, Liua;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_b1
    move-object/from16 p1, v2

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_b3
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_19
    sget-object v7, Liub;->b:Lsdb;

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    nop

    const-string v8, "Failed to write file."

    nop

    nop

    nop

    const/16 v9, 0x775

    nop

    nop

    nop

    nop

    invoke-static {v8, v9, v7, v6}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto :goto_b5

    nop

    :goto_b4
    iget-object v6, v1, Liub;->e:Liwb;

    nop

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    nop

    invoke-interface {v6, v5, v7, v4}, Liwb;->a(Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    :goto_b5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    new-instance v7, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    new-instance v8, Lpfv;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v7}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v7, v1, Liub;->f:Lgii;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lgii;->b()Lrss;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    move-object v1, v0

    nop

    nop

    nop

    :goto_b7
    :try_start_1b
    sget-object v2, Liub;->b:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v3, "Could not read exif data"

    nop

    nop

    const/16 v4, 0x771

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v2, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_9a

    nop

    nop

    :goto_bb
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_bc
    move-object/from16 v1, p0

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

    :goto_bd
    goto/16 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_f5

    nop

    :catch_13
    move-exception v0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    move-object/from16 v1, p0

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_c2
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v2}, Lswr;->a()V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_c5
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :try_start_1c
    invoke-interface {v2, v3}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    new-instance v3, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, v1, Liub;->a:Llxa;

    nop

    new-instance v7, Lmla;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v8, v18

    nop

    iget-object v8, v8, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    nop

    nop

    nop

    iget v9, v8, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageWidthPixels:I

    nop

    nop

    iget v8, v8, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageHeightPixels:I

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lpsz;->c:Lpsz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8}, Lmla;-><init>(Lpsz;)V

    invoke-virtual {v7, v10}, Lmla;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-interface {v5, v4, v7}, Llxa;->s([BLmla;)Lsui;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_c7
    const-string v2, "mime"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move-object/from16 v19, v4

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_a

    nop

    nop

    :goto_ca
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    move-object/from16 v2, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_cc
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_4
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v2}, Lswr;->a()V

    goto/32 :goto_58

    nop

    nop

    :goto_d0
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_b7

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d3
    const/4 v10, 0x0

    nop

    :catch_14
    :goto_d4
    :try_start_21
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-nez v10, :cond_21

    nop

    nop

    goto :goto_d6

    nop

    :cond_21
    new-instance v6, Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v6, v2, v10}, Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;-><init>(Ljava/lang/String;[B)V

    goto :goto_d7

    nop

    nop

    nop

    :cond_22
    if-ne v7, v15, :cond_23

    nop

    nop

    nop

    nop

    sget-object v7, Livr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    const/16 v15, 0x79a

    nop

    nop

    nop

    nop

    invoke-interface {v7, v15}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v15, "Chunk size is the maximum size, we probably clamped the sample"

    nop

    nop

    nop

    invoke-interface {v7, v15}, Lscz;->s(Ljava/lang/String;)V

    const/16 v19, 0x800

    nop

    nop

    goto :goto_d5

    nop

    :cond_23
    move/from16 v19, v7

    nop

    :goto_d5
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v20

    nop

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v22

    nop

    nop

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    move-object/from16 v17, v14

    nop

    nop

    invoke-virtual/range {v17 .. v22}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    invoke-virtual {v10, v12, v11, v14}, Liwl;->c(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z

    const/16 v15, 0x800

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e7

    nop

    nop

    nop

    :catch_15
    :goto_d6
    const/4 v6, 0x0

    nop

    :goto_d7
    new-instance v2, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    nop

    iget-object v7, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget-boolean v8, v1, Liub;->i:Z

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_24

    nop

    nop

    nop

    nop

    nop

    move-object v8, v7

    nop

    goto :goto_d8

    nop

    nop

    nop

    nop

    nop

    :cond_24
    iget-object v8, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->b:[B

    nop

    :goto_d8
    iget-object v5, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v7, v8, v5, v6}, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;-><init>([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;)V

    iget-object v5, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpdf;->g()V

    invoke-interface {v4, v9}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    move-object v5, v2

    nop

    nop

    nop

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto :goto_d9

    nop

    :cond_25
    move v2, v7

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v4, v9, v2}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-object v2, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    const-string v6, "imaxProcessing#writePano"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v6}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Liub;->j:Lits;

    nop

    nop

    nop

    invoke-virtual {v6}, Lits;->a()Ljava/lang/String;

    move-result-object v7

    nop

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lits;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".vr.jpg"

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Liub;->i:Z

    nop

    nop

    nop

    nop
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto/32 :goto_23

    nop

    nop

    :goto_da
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_16
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-lt v6, v3, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_26
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_dc
    move v6, v3

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_dd
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_e0
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_e1
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_22
    sget-object v8, Liwe;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->b()Lsdo;

    move-result-object v8

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->UIdCOss:Ljava/lang/String;

    nop

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    const/16 v12, 0x7a9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11, v12, v8, v5}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_e2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    nop

    iget-object v7, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lpdf;->g()V

    if-nez v5, :cond_27

    nop

    nop

    nop

    nop

    goto/16 :goto_a2

    nop

    :cond_27
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6, v7}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-boolean v6, v1, Liub;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_25

    nop

    iget-object v6, v1, Liub;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v11, "imaxProcessing#addAudio"

    nop

    nop

    nop

    invoke-interface {v6, v11}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v6, Livr;

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    nop

    invoke-direct {v6, v11}, Livr;-><init>(Ljava/io/File;)V

    iget-object v11, v1, Liub;->j:Lits;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lits;->b()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_10
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :try_start_23
    const-string v12, "demuxed"

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    sget-object v13, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->IhVmtixGzqDP:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v6, v6, Livr;->b:Ljava/io/File;

    nop

    invoke-static {v12, v13, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    nop
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_10
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :try_start_24
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Landroid/media/MediaExtractor;

    nop

    nop

    nop

    invoke-direct {v13}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_10
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :try_start_25
    invoke-virtual {v13, v11}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_17
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_10
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :try_start_26
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    move v15, v3

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-ge v15, v14, :cond_29

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    nop

    nop

    invoke-virtual {v10, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    const-string v8, "audio/"

    nop

    nop

    nop

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_28

    nop

    nop

    nop

    nop

    goto :goto_e4

    nop

    nop

    nop

    :cond_28
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    goto :goto_e3

    nop

    nop

    nop

    nop

    nop

    :cond_29
    const/4 v15, -0x1

    nop

    nop

    nop

    nop

    :goto_e4
    if-gez v15, :cond_2a

    nop

    nop

    nop

    sget-object v8, Livr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->b()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x79c

    nop

    invoke-interface {v8, v10}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lscz;

    nop

    const-string v10, "No video track found in %s"

    nop

    invoke-interface {v8, v10, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e5

    nop

    :cond_2a
    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto :goto_e6

    nop

    nop

    nop

    nop

    :catch_17
    sget-object v8, Livr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->b()Lsdo;

    move-result-object v8

    nop

    const/16 v10, 0x79d

    nop

    nop

    nop

    nop

    invoke-interface {v8, v10}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Lscz;

    nop

    nop

    const-string v10, "Could not open video file %s"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v10, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_e5
    const/4 v8, 0x0

    nop

    nop

    :goto_e6
    if-nez v8, :cond_2b

    nop

    sget-object v8, Livr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->b()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x79b

    nop

    nop

    invoke-interface {v8, v10}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lscz;

    nop

    const-string v10, "Could not extract MediaFormat from %s"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v10, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto :goto_e8

    nop

    nop

    nop

    nop

    :cond_2b
    new-instance v10, Liwl;

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v12, v11}, Liwl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v8}, Liwl;->a(Landroid/media/MediaFormat;)I

    move-result v12

    nop

    nop

    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v15, 0x800

    nop

    nop

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    :goto_e7
    invoke-virtual {v13, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-gtz v7, :cond_22

    nop

    nop

    nop

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    invoke-virtual {v10}, Liwl;->b()V

    :goto_e8
    if-nez v8, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d6

    nop

    nop

    nop

    nop

    :cond_2c
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    nop

    nop

    long-to-int v7, v10

    nop

    new-array v10, v7, [B

    nop

    nop

    nop

    nop
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_10
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    :try_start_27
    new-instance v11, Ljava/io/FileInputStream;

    nop

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_f
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_2b

    nop

    :goto_ea
    :try_start_28
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_14
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_10
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_d

    nop

    :catch_18
    move-exception v0

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_ec
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_ee
    if-ltz v13, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_ef
    if-ne v5, v2, :cond_2e

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    :try_start_29
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    nop

    nop

    invoke-virtual {v7, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    nop

    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    nop

    nop

    invoke-virtual {v7, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->aM:I

    nop

    nop

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->ad:I

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v5

    nop

    new-instance v14, Landroid/media/ExifInterface;

    nop

    nop

    invoke-direct {v14, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_13
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_f3
    check-cast v4, Lpbz;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move-object/from16 v19, v4

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_b2

    nop

    nop

    :goto_f6
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    move-object/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_f9
    if-lez v0, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_dd

    nop

    :goto_fa
    move-object/from16 v19, v4

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c3

    nop

    nop

    :goto_fc
    goto/16 :goto_1d

    nop

    :catchall_c
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_fd
    const/4 v6, 0x0

    nop

    nop

    nop

    :try_start_2a
    aget-byte v2, v2, v6

    nop

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    if-eq v2, v8, :cond_31

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpft;->d()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_31

    nop

    nop

    nop

    nop

    nop

    const-string v2, "GPSAltitudeRef"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    nop

    nop

    nop

    nop

    nop

    :cond_30
    :goto_fe
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_31
    :goto_ff
    if-eqz v3, :cond_32

    nop

    const-string v1, "DateTime"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeOriginal"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeDigitized"

    nop

    invoke-virtual {v14, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_100

    nop

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_39

    nop

    :catch_19
    move-exception v0

    nop

    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :catch_1a
    move-exception v0

    nop

    nop

    goto/16 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_32
    :goto_100
    if-eqz v4, :cond_33

    nop

    const-string v1, "OffsetTime"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OffsetTimeOriginal"

    nop

    nop

    nop

    invoke-virtual {v14, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OffsetTimeDigitized"

    nop

    nop

    invoke-virtual {v14, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    if-eqz v5, :cond_34

    nop

    nop

    nop

    const-string v1, "SubSecTime"

    nop

    nop

    nop

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SubSecTimeOriginal"

    nop

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SubSecTimeDigitized"

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_19
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpbz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liub;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method
