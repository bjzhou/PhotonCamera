.class public final Lphi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lrss;

.field public b:I

.field private c:Lphm;

.field private d:Lrss;

.field private e:Lrss;

.field private f:Lpck;

.field private g:I

.field private h:I

.field private i:Lrss;

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:J

.field private o:Lryb;

.field private p:Z

.field private q:J

.field private r:I

.field private s:S


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lphi;->i:Lrss;

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

    :goto_1
    iput-object p1, p0, Lphi;->e:Lrss;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lphi;->d:Lrss;

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

    :goto_5
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p1, p0, Lphi;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lphj;
    .locals 27

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    move/from16 v19, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    move-object/from16 v6, v26

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    move-object/from16 v26, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_5
    const-string v4, "Capacity should be positive or -1"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7
    iget-short v1, v0, Lphi;->s:S

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    move-object/from16 v25, v5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    move-object/from16 v16, v15

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

    :goto_a
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lphj;->a:Lphm;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v18, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_10
    iget v1, v0, Lphj;->e:I

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

    nop

    :goto_11
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v1, :cond_0

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_0
    goto/32 :goto_59

    nop

    nop

    :goto_13
    iget-boolean v15, v0, Lphi;->m:Z

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    if-nez v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    :goto_17
    move-object/from16 v0, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v4, "Format must be valid"

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x13

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

    :goto_1b
    goto/16 :goto_5e

    nop

    nop

    :goto_1c
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lpck;->b()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    invoke-direct/range {v3 .. v23}, Lphj;-><init>(Lphm;Lrss;Lrss;Lpck;IILrss;Lrss;IZIZJLryb;ZJII)V

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    const-string v1, "Size cannot be null"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v4, v0, Lphi;->c:Lphm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long v1, v4, v6

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_22
    iget v2, v0, Lphi;->b:I

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

    :goto_23
    move-object/from16 v5, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v2, 0x3ff

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lphi;->o:Lryb;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    iget v12, v0, Lphi;->j:I

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

    :goto_29
    const v0, 0x18

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean v5, v0, Lphi;->p:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v4, "StreamType cannot be null"

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

    :goto_2c
    iget-boolean v13, v0, Lphi;->k:Z

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v7, v0, Lphi;->f:Lpck;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v3, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2f
    iget-wide v5, v0, Lphi;->q:J

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_48

    nop

    nop

    :goto_32
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_69

    nop

    nop

    :goto_34
    iget-object v1, v0, Lphj;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_35
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    move v1, v3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_38
    iget-object v1, v0, Lphj;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v1, v4, :cond_5

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

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    if-eq v1, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    :goto_3b
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    move v2, v3

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v14, v0, Lphi;->l:I

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

    :goto_3f
    move v1, v3

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_40
    iget-object v5, v0, Lphi;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

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

    :goto_42
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_45
    iget v0, v0, Lphi;->r:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_46
    iget-object v6, v0, Lphi;->e:Lrss;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    goto :goto_43

    nop

    nop

    :goto_48
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    const/4 v3, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4a
    iget v9, v0, Lphi;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4b
    iget v8, v0, Lphi;->g:I

    nop

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

    :goto_4c
    iget-object v11, v0, Lphi;->a:Lrss;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4d
    invoke-static {v2, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-gtz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4f
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-wide v5, v0, Lphi;->n:J

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_52
    move v1, v2

    nop

    nop

    :goto_53
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_54
    if-gez v1, :cond_9

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_55
    return-object v0

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_57
    iget v1, v0, Lphj;->f:I

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

    :goto_58
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b

    nop

    :goto_59
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_5a
    goto :goto_53

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v4, "Size area must be positive"

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5d
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_5c

    nop

    nop

    :goto_5f
    invoke-static {v1, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v10, v0, Lphi;->i:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v24, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_64
    move-wide/from16 v20, v5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-wide/from16 v16, v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v15, Lphj;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_68
    move/from16 v23, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_69
    throw v0

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_2

    nop

    nop
.end method

.method public final b(Lpnx;)V
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

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lphi;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lphi;->h:I

    nop

    goto/32 :goto_4

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
    int-to-short p1, p1

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
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    or-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    int-to-short p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-short p1, p0, Lphi;->s:S

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

    :goto_3
    or-int/lit16 p1, p1, 0x200

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput p1, p0, Lphi;->r:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    int-to-short p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lphi;->n:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    or-int/lit8 p1, p1, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-short p1, p0, Lphi;->s:S

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
.end method

.method public final f(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lphi;->k:Z

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
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    or-int/lit8 p1, p1, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-short p1, p1

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

    :goto_5
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final g(Z)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    int-to-short p1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-short p1, p0, Lphi;->s:S

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

    :goto_4
    or-int/lit16 p1, p1, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lphi;->p:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final h(Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    int-to-short p1, p1

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

    :goto_3
    iput-boolean p1, p0, Lphi;->m:Z

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

    nop

    nop

    :goto_4
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-short p1, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lphi;->g:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-short p1, p0, Lphi;->s:S

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final j(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lphi;->j:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x4

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-short p1, p0, Lphi;->s:S

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
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    int-to-short p1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x10

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

    :goto_2
    iput p1, p0, Lphi;->l:I

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

    :goto_3
    iget-short p1, p0, Lphi;->s:S

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

    :goto_4
    return-void

    nop

    :goto_5
    int-to-short p1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lpck;)V
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

    nop

    :goto_1
    iput-object p1, p0, Lphi;->f:Lpck;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p1

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lphi;->o:Lryb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final n(Landroid/view/Surface;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lphi;->e:Lrss;

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
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final o(Lphm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lphi;->c:Lphm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final p(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

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
    iput-object p1, p0, Lphi;->i:Lrss;

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

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final q(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lphi;->q:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-short p1, p0, Lphi;->s:S

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    or-int/lit16 p1, p1, 0x100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    int-to-short p1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
