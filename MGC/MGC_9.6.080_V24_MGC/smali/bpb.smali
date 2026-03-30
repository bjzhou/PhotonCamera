.class final Lbpb;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbpc;

.field final synthetic b:I

.field final synthetic c:Lxx;


# direct methods
.method public constructor <init>(Lbpc;ILxx;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbpb;->a:Lbpc;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lbpb;->c:Lxx;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput p2, p0, Lbpb;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    shl-int/lit8 v12, v7, 0x3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    rsub-int/lit8 v12, v12, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2
    aget-wide v8, v4, v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v12, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    iget v3, v1, Lbpc;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    iget-object v1, v1, Lbpc;->f:Lxx;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v6, 0x8

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_8
    if-nez v10, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, v15, Lblz;->l:Lyg;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    move v6, v13

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    not-long v10, v8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v5, v5, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_f
    cmp-long v10, v10, v12

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    if-eqz v13, :cond_2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_11
    iget-object v3, v0, Lbpb;->c:Lxx;

    nop

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

    :goto_12
    iget v3, v0, Lbpb;->b:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_13
    iget-object v13, v15, Lblz;->m:Lyg;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    add-int/lit8 v7, v7, 0x1

    nop

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

    :goto_15
    move-object/from16 v2, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v15, v1, Lxx;->c:[I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_17
    and-long/2addr v14, v8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v16, 0x80

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lblw;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    and-long/2addr v10, v8

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v1, v2, Lblz;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    shr-long/2addr v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1d
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v6, v14, Lbms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    if-eq v3, v4, :cond_4

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    :goto_21
    iget-object v1, v0, Lbpb;->a:Lbpc;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v12}, Lxx;->e(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_25
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_26
    if-ne v7, v5, :cond_6

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    move v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v0, Lbpb;->c:Lxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v13, v15, Lblz;->l:Lyg;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v6, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2c
    if-ltz v12, :cond_7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2d
    array-length v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2e
    invoke-virtual {v6, v14}, Lyg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

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

    :cond_8
    goto/32 :goto_53

    nop

    :goto_31
    sub-int v10, v7, v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object v0

    nop

    nop

    :goto_33
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    and-long/2addr v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_35
    invoke-static {v13, v6}, Lbtk;->b(Lyg;Ljava/lang/Object;)V

    :goto_36
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_37
    shl-long/2addr v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_38
    iget-object v0, v0, Lbpb;->a:Lbpc;

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

    :goto_39
    aget-object v14, v14, v12

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v4, v0, Lbpb;->b:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3b
    const/16 v13, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3d
    invoke-static {v13, v6}, Lyg;->e(Lyg;Ljava/lang/Object;)Z

    move-result v13

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v6, v14, v0}, Lbtk;->c(Lyg;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_54

    nop

    :goto_40
    iget-object v4, v1, Lxx;->a:[J

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_a

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

    :cond_a
    goto/32 :goto_29

    nop

    nop

    :goto_42
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v12, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_45
    if-lt v11, v12, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4b

    nop

    nop

    :goto_46
    goto :goto_43

    nop

    nop

    :goto_47
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v6, v0, Lbpc;->g:Lyg;

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

    :goto_49
    rem-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4a
    ushr-int/lit8 v12, v12, 0x1f

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-wide/16 v14, 0xff

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4c
    if-ne v15, v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4d
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_50
    cmp-long v12, v14, v16

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_51
    check-cast v6, Lbms;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_52
    iget-object v14, v1, Lxx;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    aget v15, v15, v12

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_56
    if-gez v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_59

    nop

    nop

    :goto_57
    goto :goto_5a

    nop

    nop

    :goto_58
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v7, 0x0

    nop

    :goto_5a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v15, Lblz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5c
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v15, v2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5e
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5f
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_60
    not-int v12, v10

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop
.end method
