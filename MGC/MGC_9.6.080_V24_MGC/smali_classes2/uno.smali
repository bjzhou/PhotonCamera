.class public final Luno;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lunv;


# instance fields
.field public final b:Luep;

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:Lueq;

.field private final g:Lqop;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const-string v1, "REMOVE_FROZEN"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Luno;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(IZ)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lueq;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lqop;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_b
    invoke-direct {v1, v2, v3, v0}, Luep;-><init>(JLucu;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p2, p0, Luno;->e:I

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    iput-object v0, p0, Luno;->g:Lqop;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    and-int p0, p1, p2

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

    :goto_11
    const p0, 0x3fffffff    # 1.9999999f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, p0, Luno;->f:Lueq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Luno;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Luno;->b:Luep;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    if-le p2, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "Check failed."

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    iput-boolean p2, p0, Luno;->d:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    add-int/lit8 p2, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Luep;

    nop

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

    :goto_1e
    invoke-direct {v1, v2, v0}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    throw p0

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Luer;->a:Luer;

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

    :goto_24
    invoke-direct {v0, p1}, Lqop;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 16

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_30

    nop

    nop

    :goto_2
    and-int v9, v12, v4

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

    :goto_3
    add-int/lit8 v5, v12, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    and-int/2addr v3, v12

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

    :goto_5
    shr-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v15, v9}, Lqop;->j(I)Lueq;

    move-result-object v9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    iget-wide v2, v2, Luep;->b:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    and-int/2addr v13, v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v4, v0, Luno;->e:I

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

    :goto_a
    const/16 v3, 0x400

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v1}, Lueq;->c(Ljava/lang/Object;)V

    :goto_d
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_e
    and-int/2addr v5, v13

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/high16 v4, 0x3000000000000000L    # 1.727233711018889E-77

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

    :goto_10
    add-int/lit8 v13, v12, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_12
    shl-long v5, v6, v14

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_13
    move-object/from16 v0, p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_65

    nop

    :goto_15
    iget-object v9, v9, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v2}, Lqop;->j(I)Lueq;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    long-to-int v8, v8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_18
    and-int/2addr v3, v12

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-int v3, v12, v13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v0, Luno;->g:Lqop;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1c
    cmp-long v4, v4, v6

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

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_34

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Lqop;->j(I)Lueq;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v5

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8, v2, v3, v5, v6}, Luep;->d(JJ)Z

    move-result v2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_28
    shr-long/2addr v12, v14

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    long-to-int v12, v12

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sub-int/2addr v12, v8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    instance-of v3, v2, Lunn;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x1

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

    :goto_2f
    const v13, 0x3fffffff    # 1.9999999f

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    nop

    :goto_32
    and-long/2addr v4, v2

    nop

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

    :goto_33
    or-long/2addr v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    return v5

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, v0, Luno;->b:Luep;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    const-wide/high16 v0, 0x2000000000000000L

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_38
    iget-object v2, v2, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v13, v9, :cond_4

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

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    and-int v2, v12, v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v9, :cond_5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v0, Luno;->g:Lqop;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    and-long v12, v2, v10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3e
    iget v3, v0, Luno;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3f
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v15, v0, Luno;->g:Lqop;

    nop

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

    :goto_42
    check-cast v2, Lunn;

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

    :goto_43
    and-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_44
    if-ge v2, v3, :cond_6

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
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v3}, Lqop;->j(I)Lueq;

    move-result-object v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eq v2, v12, :cond_7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v2, v0, Luno;->g:Lqop;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, v0, Luno;->b:Luep;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v3, :cond_8

    nop

    goto/32 :goto_27

    nop

    :cond_8
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v14, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v8, v0, Luno;->b:Luep;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return v5

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v2, v0, Luno;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2, v1}, Lueq;->c(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v2, v2, Luep;->b:J

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-wide/16 v6, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    and-int v9, v8, v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v2, v2, Lunn;->a:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_57
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_58
    if-eqz v9, :cond_a

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_59
    and-long/2addr v2, v4

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5a
    const-wide/32 v8, 0x3fffffff

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_5b
    and-long/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v3, v0, Luno;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5d
    const-wide/high16 v4, 0x1000000000000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5e
    if-gt v3, v2, :cond_b

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_b
    :goto_5f
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_60
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v2, v3, v10, v11}, Luch;->Y(JJ)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Luno;->c()Luno;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_63
    cmp-long v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_64
    iget-boolean v9, v0, Luno;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_20

    nop

    :goto_66
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_67
    const v1, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_68
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_69
    cmp-long v0, v0, v6

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

    :goto_6a
    const-wide v10, 0xfffffffc0000000L

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

    :goto_6b
    int-to-long v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 19

    goto/32 :goto_64

    nop

    nop

    :goto_0
    const-wide/high16 v3, 0x1000000000000000L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-wide v13, v2, Luep;->b:J

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

    :goto_2
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4
    iget-object v2, v1, Luno;->g:Lqop;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    return-object v10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v11, v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget-object v10, v10, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v11, v0, Luno;->g:Lqop;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_b
    long-to-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_c
    iget-object v13, v0, Luno;->b:Luep;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_e
    and-long v7, v13, v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v12}, Lueq;->c(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v14, 0x3fffffff    # 1.9999999f

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/high16 v3, 0x1000000000000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12
    iget v13, v0, Luno;->e:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    instance-of v11, v10, Lunn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    and-int/2addr v0, v9

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v1, Luno;->b:Luep;

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    and-long/2addr v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto :goto_16

    nop

    nop

    :goto_19
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    cmp-long v5, v5, v7

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1c
    if-nez v11, :cond_2

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

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v10, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    :goto_1e
    cmp-long v0, v17, v15

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_20
    const-wide/32 v5, 0x3fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object v12

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 v15, 0x0

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

    :goto_24
    if-nez v0, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_25
    long-to-int v9, v9

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

    :goto_26
    iget-object v1, v0, Luno;->g:Lqop;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-boolean v0, Lufu;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_28
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v11, v10}, Lqop;->j(I)Lueq;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2a
    and-long v9, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v12

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v10

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v14, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_30
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    :goto_33
    const-wide v11, 0xfffffffc0000000L

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_34
    invoke-virtual {v0, v12}, Lueq;->c(Ljava/lang/Object;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v0}, Lqop;->j(I)Lueq;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v0}, Lqop;->j(I)Lueq;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_19

    nop

    nop

    :goto_39
    goto/32 :goto_48

    nop

    nop

    :goto_3a
    iget-object v1, v0, Luno;->b:Luep;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v5, :cond_9

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    and-long v5, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3d
    if-eq v11, v10, :cond_a

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2b

    nop

    nop

    :goto_3e
    shr-long/2addr v11, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, v0, Luno;->e:I

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

    :goto_40
    move-object v1, v0

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    :goto_42
    iget-object v0, v1, Luno;->b:Luep;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_43
    const-wide/high16 v3, 0x1000000000000000L

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

    :goto_44
    iget-boolean v1, v0, Luno;->d:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_45
    move-object v1, v12

    nop

    :goto_46
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1, v2, v11}, Luch;->Z(JI)J

    move-result-wide v14

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v13, v1, v2, v14, v15}, Luep;->d(JJ)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4b
    and-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4d
    return-object v12

    nop

    :goto_4e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-wide v7, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v0, Luno;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    and-int/2addr v11, v14

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

    :goto_54
    invoke-virtual {v1}, Luno;->c()Luno;

    move-result-object v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_56
    and-int/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_57
    iget v1, v1, Luno;->e:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_58
    invoke-virtual {v0, v13, v14, v3, v4}, Luep;->d(JJ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v13, v14, v11}, Luch;->Z(JI)J

    move-result-wide v3

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

    :goto_5a
    long-to-int v0, v7

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5d
    iget-wide v1, v1, Luep;->b:J

    nop

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

    nop

    :goto_5e
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    and-int v10, v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_60
    const-wide/16 v7, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_61
    move-wide v7, v15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_62
    and-long v17, v13, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_63
    iget-boolean v1, v0, Luno;->d:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v0, 0xb

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
.end method

.method public final c()Luno;
    .locals 13

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    and-long/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    cmp-long v5, v5, v7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/32 v6, 0x3fffffff

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2e

    nop

    nop

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2, v5, v6}, Luep;->d(JJ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v11, v8, Luno;->g:Lqop;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a
    and-int/2addr v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_b
    const/16 v7, 0x1e

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v9, v6, Luep;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_d
    long-to-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v7, p0, Luno;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v6, v6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    const-wide v9, 0xfffffffc0000000L

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

    :goto_12
    new-instance v8, Luno;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    shr-long v11, v9, v7

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

    :goto_14
    iget v7, p0, Luno;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    and-long v5, v1, v3

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_19
    invoke-virtual {v7, v12}, Lqop;->j(I)Lueq;

    move-result-object v7

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Luno;->f:Lueq;

    nop

    :goto_1b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v5, Luno;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    or-long v5, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    :goto_21
    return-object v5

    nop

    :goto_22
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    move-wide v1, v5

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    :goto_25
    iget-object v0, p0, Luno;->b:Luep;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/high16 v3, 0x1000000000000000L

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    goto :goto_24

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v7, v7, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    invoke-direct {v8, v6, v7}, Luno;-><init>(IZ)V

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    new-instance v7, Lunn;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2c
    iget-object v7, p0, Luno;->g:Lqop;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    long-to-int v6, v6

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    :goto_2f
    iget-object v6, v8, Luno;->b:Luep;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_30
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    iget-object v5, v0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v2, v3, v4}, Luch;->Y(JJ)J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v6, 0x0

    nop

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

    :goto_34
    iget v12, v8, Luno;->e:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_17

    nop

    :goto_36
    invoke-virtual {v5, v6, v8}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_37
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v7, v6}, Lunn;-><init>(I)V

    :goto_39
    goto/32 :goto_9

    nop

    nop

    :goto_3a
    iget v6, p0, Luno;->c:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3b
    invoke-virtual {v11, v12}, Lqop;->j(I)Lueq;

    move-result-object v11

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    and-int/2addr v12, v6

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    and-int v12, v6, v7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_41
    iget-wide v1, v0, Luep;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_42
    iget-object v5, p0, Luno;->f:Lueq;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_43
    if-ne v12, v7, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    and-long/2addr v9, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v11, v7}, Lueq;->c(Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop
.end method

.method public final d()Z
    .locals 11

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    and-long/2addr v9, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget-wide v1, v0, Luep;->b:J

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

    :goto_8
    const-wide/high16 v9, 0x1000000000000000L

    nop

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

    :goto_9
    cmp-long v5, v9, v7

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const/4 v6, 0x1

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

    :goto_b
    invoke-virtual {v0, v1, v2, v3, v4}, Luep;->d(JJ)Z

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v5, v5, v7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/high16 v3, 0x2000000000000000L

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Luno;->b:Luep;

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

    :goto_15
    or-long/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    and-long v5, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_1a
    return v6

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop
.end method

.method public final e()Z
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    long-to-int p0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    and-long/2addr v0, v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    long-to-int v0, v0

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

    nop

    :goto_d
    const/16 p0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const-wide/32 v2, 0x3fffffff

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iget-wide v0, p0, Luep;->b:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    const-wide v4, 0xfffffffc0000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Luno;->b:Luep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    shr-long/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_16
    and-long/2addr v2, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
