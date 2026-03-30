.class final Lbti;
.super Luaq;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:J

.field h:I

.field final synthetic i:Lbtj;

.field private synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbtj;Ltzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbti;->i:Lbtj;

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-direct {p0, p2}, Luaq;-><init>(Ltzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast p0, Lbti;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    check-cast p1, Lued;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbti;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    sget-object p1, Ltyg;->a:Ltyg;

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

    :goto_6
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v11, v0, Lbti;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v8, v8, -0x2

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2
    and-long/2addr v12, v10

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    move v9, v3

    nop

    nop

    :goto_4
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v14, v1, :cond_0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_67

    nop

    nop

    :goto_6
    iget-object v11, v0, Lbti;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7
    move-object v15, v12

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, v6, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    if-nez v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    nop

    :goto_d
    goto/16 :goto_27

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    if-ltz v14, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v14, v2

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

    nop

    :goto_11
    const-wide/16 v16, 0x80

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

    nop

    nop

    :goto_12
    iget v2, v0, Lbti;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v7, v0, Lbti;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    nop

    :goto_15
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_16
    const v1, 0xd

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmp-long v12, v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v14, v14, v16

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v12, v0, Lbti;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    shr-long/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v0, p0

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

    :goto_1d
    iget-object v2, v0, Lbti;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v13, v14, v0}, Lued;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object v14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5d

    nop

    nop

    :goto_20
    rsub-int/lit8 v12, v12, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v13, v0, Lbti;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    const-wide/16 v14, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_26
    return-object v1

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-wide v7, v0, Lbti;->g:J

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v2, Lued;

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

    :goto_2c
    move-wide/from16 v7, v18

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v11, v6

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2f
    iget-object v6, v6, Lbtj;->a:Lyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_30
    move-object v2, v13

    nop

    :goto_31
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v2, v0, Lbti;->f:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_33
    shl-int/lit8 v14, v9, 0x3

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

    :goto_34
    iget v10, v0, Lbti;->c:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_35
    shl-long/2addr v12, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_36
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_37
    iput-object v13, v0, Lbti;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0xf

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3a
    move v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3b
    if-lt v2, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    ushr-int/lit8 v12, v12, 0x1f

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

    :goto_3f
    const/4 v14, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_40
    aget-object v14, v15, v14

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v6, v0, Lbti;->e:I

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

    :goto_42
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_43
    iput v4, v0, Lbti;->h:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v9, v8, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v15, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_46
    iget v9, v0, Lbti;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_47
    and-long/2addr v14, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_48
    add-int/2addr v2, v4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_49
    move v8, v10

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

    :goto_4a
    iget-object v6, v0, Lbti;->i:Lbtj;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_2d

    nop

    :goto_4c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput v6, v0, Lbti;->e:I

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4e
    move-object v13, v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v12, v7

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v10, [J

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_51
    aget-wide v10, v10, v9

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_52
    not-long v12, v10

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    and-long/2addr v12, v14

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v13, Lued;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v12, v0, Lbti;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_58
    move-wide/from16 v18, v10

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_59
    move-object v7, v12

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5a
    not-int v12, v12

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 v5, 0x8

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

    :goto_5c
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    :goto_5d
    iget v2, v0, Lbti;->f:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sub-int v12, v9, v8

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

    :goto_5f
    array-length v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_60
    if-eq v6, v5, :cond_7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_61
    move-object v10, v6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput v10, v0, Lbti;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_63
    iget-object v6, v6, Lyj;->a:[J

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_64
    if-gez v8, :cond_8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_66
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_69
    iput v9, v0, Lbti;->d:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p2}, Lbti;-><init>(Lbtj;Ltzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, v0, Lbti;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lbti;->i:Lbtj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    new-instance v0, Lbti;

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
.end method
