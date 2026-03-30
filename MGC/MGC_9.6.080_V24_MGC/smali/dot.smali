.class public final Ldot;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldot;->a:[Ljava/lang/Object;

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

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p3, p0, Ldot;->c:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ldot;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3, v15}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Ljava/lang/Number;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static/range {v1 .. v24}, Lbdx;->a(Lbzz;Lbdz;Lubo;Lubo;Lubp;Lubo;IZLcfs;FJJJJJLubp;Lblm;II)V

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v15, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Ldot;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    new-instance v3, Ldor;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v15}, Lblm;->s()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    const-wide/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    invoke-direct {v3, v2, v1}, Ldor;-><init>([Ljava/lang/Object;Lbny;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16
    new-instance v4, Ldos;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    invoke-static {v0, v4, v15}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object v21

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

    :goto_19
    move-object/from16 v22, v0

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

    :goto_1a
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    sget-object v2, Lbll;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Ldot;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    move-wide/from16 v15, v16

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_41

    nop

    :goto_23
    check-cast v15, Lblm;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    and-int/lit8 v1, v1, 0x3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v4, v2, v3, v0, v1}, Ldos;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lbny;)V

    goto/32 :goto_34

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    invoke-interface {v15}, Lblm;->H()Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-wide/16 v19, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v13, 0x0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v15, v1}, Lblm;->x(Ljava/lang/Object;)V

    :goto_2f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v1, Lboi;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    const/high16 v23, 0x30000

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_32
    const-wide/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1, v2}, Lboi;-><init>(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_34
    const v0, 0x36a7e9b

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_35
    iget-object v2, v0, Ldot;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_36
    const/high16 v24, 0xc00000

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

    nop

    :goto_37
    invoke-interface {v15}, Lblm;->g()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_39
    goto/32 :goto_42

    nop

    nop

    :goto_3a
    iget-object v3, v0, Ldot;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v0, v15

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-object v0

    nop

    nop

    :goto_3d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v1, Lbny;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v2, 0x392326a5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3d

    nop

    :goto_42
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
