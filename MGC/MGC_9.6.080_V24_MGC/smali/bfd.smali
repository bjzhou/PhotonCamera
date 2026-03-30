.class final Lbfd;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbed;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLbed;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lbfd;->b:Lbed;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lbfd;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p4, p0, Lbfd;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const/high16 v8, 0x30000000

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v7 .. v15}, Lbbg;-><init>(JJJJ)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4
    invoke-interface {v6, v4}, Lblm;->x(Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    invoke-static {v6}, Lbbb;->b(Lblm;)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-direct {v2, v0}, Lbfc;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_b
    if-eq v4, v1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    iget-object v0, v0, Lbfd;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2b

    nop

    nop

    :goto_12
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    check-cast v1, Ljava/lang/Number;

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

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    invoke-interface {v6}, Lblm;->s()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    const v0, -0x3761b3ed

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

    :goto_1a
    sget-object v1, Lbll;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Lbas;->g()J

    move-result-wide v1

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

    :goto_1c
    invoke-static/range {v0 .. v7}, Lbar;->b(Luaz;Lbzz;Lcfs;Lbak;Lapv;Lubp;Lblm;I)V

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v7, Lbal;->c:Lapv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v4, v2}, Lbfb;-><init>(Lbed;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v6}, Lbdb;->a(Lblm;)Lbas;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v6, v1}, Lblm;->E(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_22
    invoke-interface {v6}, Lblm;->H()Z

    move-result v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_23
    move-object v4, v7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Lbfd;->b:Lbed;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    sget-wide v12, Lcel;->e:J

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, v0, Lbea;->a:Laxr;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v3, Lbbg;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2b
    move-object/from16 v0, p0

    nop

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

    :goto_2c
    move-object v1, v4

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

    :goto_2d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2f
    iget-wide v10, v0, Lbfd;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    new-instance v4, Lbfb;

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

    :goto_31
    invoke-static {v0, v2, v6}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v2, v3}, Lcel;->h(JF)J

    move-result-wide v14

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_29

    nop

    :goto_34
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v7, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_38
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v6}, Lbdb;->b(Lblm;)Lbea;

    move-result-object v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v6, Lblm;

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

    :goto_3b
    new-instance v2, Lbfc;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v2, Lbzz;->c:Lbzv;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3d
    and-int/lit8 v1, v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v6}, Lblm;->g()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_40
    move-wide v8, v12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    move v7, v8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_42
    move-object v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_43
    sget v1, Lbal;->a:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_44
    iget-object v2, v0, Lbfd;->b:Lbed;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
