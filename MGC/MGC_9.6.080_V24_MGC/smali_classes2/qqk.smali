.class final Lqqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqqi;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lqmy;

.field private final c:Ltxm;

.field private final d:Ltxm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqmy;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqqk;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lqqk;->d:Ltxm;

    nop

    goto/32 :goto_4

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

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lqqk;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p2, p0, Lqqk;->b:Lqmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public a(IILjava/lang/String;J)Lsui;
    .locals 19

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_0
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_1
    invoke-static {v5, v6}, Ltng;->b(J)Ltmm;

    goto/32 :goto_87

    nop

    nop

    :goto_2
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/16 v9, 0x12c

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

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_0
    :goto_5
    goto/32 :goto_63

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    :pswitch_0
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v5, Lqqj;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0xf

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v1, Lqqk;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v11, 0xa

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v8, Luoy;

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_d
    iget v10, v9, Luoz;->b:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_11
    or-int/2addr v10, v12

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_9

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0xe

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_9

    nop

    nop

    :pswitch_2
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v9, 0xe6

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_17
    const/16 v9, 0xc8

    nop

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

    :goto_18
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :goto_1a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v11, v18

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_44

    nop

    :goto_1e
    :try_start_1
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v5

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v5, :cond_26

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_11b

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_1f
    new-array v10, v12, [B

    nop

    move v11, v3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ge v11, v12, :cond_4

    nop

    nop

    nop

    sub-int v13, v12, v11

    nop

    invoke-virtual {v5, v10, v11, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    const/4 v14, -0x1

    nop

    nop

    nop

    nop

    if-ne v13, v14, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_3
    add-int/2addr v11, v13

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    :cond_4
    :goto_21
    if-nez v11, :cond_5

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {v10, v3, v11}, Ltjj;->q([BII)Ltjj;

    move-result-object v10

    nop

    nop

    :goto_22
    if-nez v10, :cond_20

    nop

    nop

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_6

    nop

    nop

    sget-object v9, Ltjj;->b:Ltjj;

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    invoke-static {v9, v10}, Ltjj;->n(Ljava/util/Iterator;I)Ltjj;

    move-result-object v9

    nop

    nop

    nop

    :goto_23
    iget-object v10, v1, Lqqk;->d:Ltxm;

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, Ljava/lang/Long;

    nop

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    const-wide/16 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v10, v10, v12

    nop

    nop

    nop

    if-ltz v10, :cond_1c

    nop

    nop

    nop

    invoke-virtual {v9}, Ltjj;->d()I

    move-result v10

    nop

    int-to-long v10, v10

    nop

    nop

    nop

    iget-object v12, v1, Lqqk;->d:Ltxm;

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_24
    iget v12, v0, Luoz;->b:I

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_7
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_cd

    nop

    nop

    :cond_8
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_27
    iget v11, v10, Luoz;->b:I

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v0, v9, Luoz;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v1, Lqqk;->b:Lqmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/app/ActivityManager;->isLowMemoryKillReportSupported()Z

    move-result v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v7, p3

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_31
    iput-wide v9, v0, Luoz;->j:J

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

    :goto_32
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v0, v3

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v0, v11

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v12, v0, Luoz;->b:I

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v9, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v0, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_3c
    move v0, v9

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_3d
    check-cast v9, Luoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3e
    move/from16 v0, v16

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v12, v0, Luoz;->b:I

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_40
    check-cast v6, Landroid/app/ApplicationExitInfo;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_41
    check-cast v0, Luoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Luoz;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v9, v10, v5, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_44
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_45
    move v0, v5

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_46
    iput v10, v9, Luoz;->b:I

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_47
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_49
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_69

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-ne v10, v9, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_fb

    nop

    nop

    :goto_4c
    iget v12, v0, Luoz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4d
    iput-wide v9, v0, Luoz;->i:J

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    or-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4f
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v9, v8, Luoy;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_52
    const/16 v12, 0x100

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_53
    const/4 v15, 0x5

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v5, 0x7

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_55
    if-eq v0, v5, :cond_b

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_56
    const/4 v11, 0x4

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v10

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_59
    move/from16 v0, v18

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eqz v9, :cond_c

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_c
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 v0, 0xd

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_5c
    if-ne v10, v9, :cond_d

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v10, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_5e
    const/16 v18, 0x2

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_5f
    iget v10, v9, Luoz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_60
    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_61
    const/16 v9, 0x7d

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput v10, v9, Luoz;->b:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v0, Luoz;->a:Luoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_64
    goto/16 :goto_9

    nop

    nop

    :pswitch_3
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_66
    goto/32 :goto_ad

    nop

    nop

    :goto_67
    const/4 v11, 0x4

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_68
    if-gtz v10, :cond_e

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_e
    :goto_69
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_e1

    nop

    nop

    :goto_6a
    if-eqz v9, :cond_f

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v9, v8, Luoy;->b:Ltkg;

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

    :goto_6c
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_6f
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v9

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_71
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_9

    nop

    :pswitch_5
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2, v0}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_74
    move v0, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_9

    nop

    nop

    :pswitch_6
    goto/32 :goto_3e

    nop

    nop

    :goto_76
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_7b
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_7c
    const/16 v9, 0x64

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_7d
    iget v10, v9, Luoz;->b:I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_7e
    if-ne v10, v9, :cond_11

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v5, v1, v8}, Lqqj;-><init>(Lqqk;Luoy;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_83
    const v1, 0x1

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_85
    if-ne v10, v9, :cond_12

    nop

    goto/32 :goto_ec

    nop

    :cond_12
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_86
    iget-object v0, v8, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0}, Lqmy;->a()Lsui;

    move-result-object v0

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

    :goto_88
    iput v10, v9, Luoz;->b:I

    nop

    :goto_89
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v11, v0, -0x1

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_8b
    iput v10, v9, Luoz;->b:I

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput v12, v0, Luoz;->b:I

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

    :goto_8d
    goto/16 :goto_98

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_90
    const/16 v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_91
    iget-object v9, v8, Luoy;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_1a

    nop

    nop

    :goto_93
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v2, v1, Lqqk;->a:Landroid/content/Context;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_96
    move v0, v13

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_99
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getPid()I

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_9b
    or-int/lit8 v12, v12, 0x10

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_9c
    move-object v5, v0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9d
    throw v9

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_9e
    iget v10, v9, Luoz;->b:I

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9f
    iput-wide v9, v0, Luoz;->g:J

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_a1
    move/from16 v0, v17

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_a2
    goto/16 :goto_9

    nop

    :pswitch_7
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    cmp-long v10, v10, v12

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

    :goto_a6
    or-int/lit8 v11, v11, 0x2

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_a7
    sget-object v5, Lqmo;->a:Lsdb;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v11, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_13
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_a9
    iget-object v0, v8, Luoy;->b:Ltkg;

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-eqz v10, :cond_14

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct {v1, v5}, Lqkq;-><init>(I)V

    goto/32 :goto_4f

    nop

    nop

    :goto_ac
    iget-object v0, v8, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_ad
    iget-object v0, v8, Luoy;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ae
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_b1
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const/16 v13, 0x9

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    check-cast v0, Landroid/app/ActivityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static {v0, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

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

    :goto_b5
    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5d

    nop

    nop

    :goto_b6
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/16 v10, 0x1533

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_bb
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_3c

    nop

    nop

    :goto_be
    cmp-long v0, v8, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_bf
    if-lez v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_92

    nop

    :goto_c0
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_1c

    nop

    nop

    :goto_c3
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_c4
    check-cast v9, Luoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_c5
    check-cast v10, Luoz;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_c6
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_c7
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_9

    nop

    :pswitch_a
    goto/32 :goto_13

    nop

    nop

    :goto_c9
    check-cast v9, Luoz;

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

    :goto_ca
    if-ne v10, v9, :cond_18

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v0, v5, v6}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_cd
    goto/32 :goto_a9

    nop

    nop

    :goto_ce
    iget-object v9, v8, Luoy;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_cf
    new-instance v1, Lqkq;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_d0
    iget-object v0, v1, Lqqk;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_d1
    if-eqz v9, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_d3
    goto/32 :goto_ea

    nop

    nop

    :goto_d4
    iget-object v0, v8, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_d5
    iput-object v0, v9, Luoz;->c:Ljava/lang/String;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_d6
    move v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_d7
    or-int/lit16 v12, v12, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d8
    move v11, v15

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

    nop

    nop

    :goto_d9
    or-int/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_da
    rem-int v0, v0, v1

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_db
    iput v11, v10, Luoz;->b:I

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_dc
    if-eqz v9, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move/from16 v11, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_de
    if-ne v10, v9, :cond_1b

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/16 v17, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_e0
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_44

    nop

    nop

    nop

    :cond_1c
    :goto_e2
    :try_start_5
    sget-object v10, Luox;->a:Luox;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_1d

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_1d
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v12, v11

    nop

    check-cast v12, Luox;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v12, Luox;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v13, v13, 0x2

    nop

    nop

    iput v13, v12, Luox;->b:I

    nop

    nop

    nop

    nop

    iput-object v9, v12, Luox;->d:Ltjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_1e

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_1e
    iget-object v9, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v9, Luox;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v9, Luox;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v11, v11, 0x1

    nop

    nop

    iput v11, v9, Luox;->b:I

    nop

    nop

    nop

    iput-object v0, v9, Luox;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Luox;

    nop

    nop

    nop

    nop

    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_1f

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_1f
    iget-object v9, v8, Luoy;->b:Ltkg;

    nop

    check-cast v9, Luoz;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v9, Luoz;->l:Luox;

    nop

    nop

    nop

    nop

    iget v0, v9, Luoz;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v0, v0, 0x200

    nop

    nop

    nop

    iput v0, v9, Luoz;->b:I

    nop

    goto/16 :goto_69

    nop

    nop

    :cond_20
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v12

    nop

    nop

    nop

    nop

    const/16 v10, 0x2000

    nop

    nop

    nop

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const/16 v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-direct {v2}, Lrxw;-><init>()V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v5, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v14, 0x6

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_9

    nop

    :pswitch_b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v0, v8, Luoy;->b:Ltkg;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_1c

    nop

    nop

    :goto_ec
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_ee
    if-ne v10, v9, :cond_22

    nop

    nop

    goto/32 :goto_c3

    nop

    :cond_22
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    move v11, v14

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_f1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    move v11, v5

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget v12, v0, Luoz;->b:I

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_f4
    if-ne v10, v9, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_f5
    or-int/lit8 v12, v12, 0x40

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_f6
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_33

    nop

    nop

    :goto_f8
    move/from16 v11, v16

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f9
    goto/16 :goto_9

    nop

    :pswitch_d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v0

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

    :goto_fb
    const/16 v9, 0x145

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_fc
    goto/16 :goto_1c

    nop

    nop

    :goto_fd
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-eqz v0, :cond_24

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    or-int/lit8 v10, v10, 0x8

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_100
    iput v11, v10, Luoz;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_101
    check-cast v9, Luoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_102
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_103
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_104
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    check-cast v0, Luoz;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_107
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-object v10, v8, Luoy;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10c
    iput-boolean v0, v9, Luoz;->k:Z

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    if-ne v10, v9, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_10e
    const/16 v9, 0x15e

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_10f
    move v11, v3

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_110
    goto/16 :goto_9

    nop

    nop

    :pswitch_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_111
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_112
    invoke-virtual {v2}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_113
    move-object v8, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_114
    move v0, v3

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_115
    const/16 v9, 0x3e8

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_116
    const/16 v9, 0x190

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_117
    const-string v2, "activity"

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_118
    const-string v9, "Failed to read ANR trace"

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    const/16 v16, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_11a
    goto/16 :goto_1f

    nop

    :cond_26
    :goto_11b
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iput v11, v9, Luoz;->f:I

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_11e
    goto/32 :goto_109

    nop

    nop

    :goto_11f
    new-instance v2, Lrxw;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v0, v2, v3, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic b(Luoy;Lrss;)Luoz;
    .locals 4

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6
    iget-object p2, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_40

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lqmx;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_49

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x2

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

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v0, p2, Luoz;->h:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iput v2, p2, Luoz;->b:I

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

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_16
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, p2, Luoz;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iget-object p2, p2, Lqmv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lqmx;->b:Ltkv;

    nop

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

    :goto_1b
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1c
    move v3, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    or-int/lit8 v2, v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p2, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_21
    if-ne v3, v2, :cond_4

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_40

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_26
    iget v0, p2, Lqmv;->b:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p2, Lqmw;->a:Lqmw;

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p2, p2, Lqmw;->b:Ltmm;

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

    :goto_2b
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p2, :cond_7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p2}, Ltng;->a(Ltmm;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    :goto_37
    const v1, 0xc

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p2, Luoz;

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

    :goto_3b
    check-cast p2, Lqmv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    throw p0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5

    nop

    nop

    :goto_3e
    if-eqz p0, :cond_9

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v3, 0x3

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0xc

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Luoz;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Luoz;

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p2, p1, Luoy;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_44

    nop

    nop

    :goto_47
    goto/32 :goto_d

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz p2, :cond_a

    nop

    goto/32 :goto_20

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    :goto_4b
    sget-object v2, Luoz;->a:Luoz;

    nop

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
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_25

    nop

    nop

    :goto_4e
    check-cast p2, Lqmw;

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method
