.class public final Ldir;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/text/Layout;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:[Z

.field private e:[C


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(IZ)F
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldir;->a:Landroid/text/Layout;

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

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

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

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0}, Lucd;->i(II)I

    move-result p1

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

    :goto_15
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    iput-object p1, p0, Ldir;->d:[Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    if-ge v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v3, v1, v4}, Luch;->v(Ljava/lang/CharSequence;CII)I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ldir;->b:Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    goto :goto_11

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    new-array p1, p1, [Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_11
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ltz v1, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_23

    nop

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Ldir;->b:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Ldir;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1f
    iput-object v1, p0, Ldir;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v1, v1, 0x1

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_27
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v3, 0xa

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    :goto_2b
    new-instance p1, Ljava/util/ArrayList;

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
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

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

    nop

    :goto_2d
    iput-object p1, p0, Ldir;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    if-lt v0, p1, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x1e

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Ldir;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(IZZ)F
    .locals 22

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_0
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v12, v10, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    const/4 v13, 0x0

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v7, :cond_3

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f3

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v7}, Ldir;->d(I)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    :goto_10
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v14, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_13
    iget-object v5, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v3, v3, Ldiq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_15
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    :cond_5
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v5, v6}, Ldir;->c(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_19
    if-eq v3, v8, :cond_6

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_1a
    move v7, v10

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    :goto_1c
    move v2, v4

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1d
    if-nez v9, :cond_7

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

    :cond_7
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget-object v6, v7, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_20
    iget-object v7, v0, Ldir;->e:[C

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_21
    goto :goto_2b

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, v1, Ldiq;->a:I

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

    :goto_24
    check-cast v9, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_25
    invoke-static {v7, v8}, Lrkm;->aH(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v7

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p2, :cond_8

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-byte v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_2a
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v6, v1, :cond_9

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

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

    :goto_30
    return v0

    nop

    nop

    :goto_31
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v1, v7, :cond_a

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_140

    nop

    nop

    :goto_34
    goto/32 :goto_125

    nop

    nop

    nop

    :goto_35
    add-int/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v12, v0, Ldir;->c:Ljava/util/List;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v7, v0, Ldir;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_39
    move-object/from16 v16, v13

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v4, v5

    nop

    nop

    :goto_3b
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v1, -0x1

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v4, v9

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

    :goto_40
    iget v6, v6, Ldiq;->b:I

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v11, v4, v7, v4, v3}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v12, :cond_b

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_45
    if-eq v12, v8, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_c
    :goto_46
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v9, :cond_d

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v3, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_49
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_34

    nop

    nop

    :goto_4b
    goto/32 :goto_3f

    nop

    nop

    :goto_4c
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4e
    move v2, v5

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v9, v4

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_b9

    nop

    nop

    :goto_54
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    return v0

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_57
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_58
    move v12, v4

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_5b
    if-eq v4, v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_5c
    if-lt v5, v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_122

    nop

    nop

    :goto_5e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_60
    if-eq v15, v8, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_10
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_62
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_f6

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v10, v7, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_fb

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_54

    nop

    nop

    :goto_68
    return v0

    nop

    nop

    :goto_69
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_6b
    new-array v7, v3, [Ldiq;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eq v1, v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_11
    goto/32 :goto_52

    nop

    nop

    :goto_6d
    invoke-virtual {v13, v10}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v0, 0x1f

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

    :goto_6f
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_d4

    nop

    nop

    :goto_71
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_4f

    nop

    :goto_73
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move v9, v4

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_132

    nop

    nop

    nop

    :goto_76
    move-object v7, v3

    nop

    nop

    :goto_77
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct/range {v15 .. v21}, Ljava/text/Bidi;-><init>([CI[BIII)V

    goto/32 :goto_f8

    nop

    nop

    :goto_79
    if-eqz v9, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :cond_12
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eqz p2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_13
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_7c
    new-array v11, v10, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_7d
    invoke-virtual {v13}, Ljava/text/Bidi;->getRunCount()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_7e
    new-instance v11, Ldiq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_7f
    move v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_51

    nop

    :goto_81
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_82
    aget-object v6, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    add-int/2addr v7, v8

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_85
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move/from16 v20, v14

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-int/2addr v12, v6

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    aget-object v1, v7, v4

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_89
    const/16 v19, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v13, v4, v15}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v13}, Ljava/text/Bidi;->getRunCount()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_8c
    invoke-virtual {v13, v10}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v12

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aget-object v1, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_8e
    if-nez v9, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_8f
    if-nez v3, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_13b

    nop

    :goto_91
    goto/32 :goto_d9

    nop

    nop

    :goto_92
    const/4 v13, 0x0

    nop

    :goto_93
    goto/32 :goto_10a

    nop

    nop

    :goto_94
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_95
    check-cast v12, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_97
    move/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0, v7}, Ldir;->b(I)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_99
    iget v1, v1, Ldiq;->b:I

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

    :goto_9a
    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :cond_16
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    return v0

    nop

    :goto_9c
    goto/32 :goto_d6

    nop

    nop

    :goto_9d
    invoke-direct/range {p0 .. p2}, Ldir;->23ce148e54b083367f51e25c7971761em(IZ)F

    move-result v0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_9e
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    sub-int v11, v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_a2
    if-lt v3, v15, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :cond_17
    :goto_a3
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    sub-int v15, v14, v12

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_a5
    if-eq v9, v1, :cond_18

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_18
    :goto_a6
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v0, v1, v6}, Ldir;->c(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_2a

    nop

    nop

    :goto_a9
    move-object v15, v3

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

    :goto_aa
    if-nez v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_ac
    move v15, v8

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_e5

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_af
    iget-object v13, v0, Ldir;->e:[C

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

    :goto_b0
    if-nez v13, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    :cond_1a
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct/range {p0 .. p2}, Ldir;->23ce148e54b083367f51e25c7971761em(IZ)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_b2
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b4
    if-eqz v1, :cond_1b

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_b5
    iget-object v12, v0, Ldir;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_b6
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_b8
    add-int/2addr v4, v1

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-direct/range {p0 .. p2}, Ldir;->23ce148e54b083367f51e25c7971761em(IZ)F

    move-result v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    add-int/lit8 v5, v5, 0x1

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

    nop

    nop

    :goto_bb
    return v0

    nop

    :goto_bc
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v9, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_c0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_14a

    nop

    nop

    :goto_c2
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    aput-boolean v8, v12, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-eq v1, v6, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v12, v0, Ldir;->d:[Z

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-boolean v1, v1, Ldiq;->c:Z

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_c8
    aget-object v1, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_131

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_bc

    nop

    nop

    :goto_cc
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_cd
    move v4, v1

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_152

    nop

    nop

    :goto_cf
    invoke-static {v3, v12, v14, v13, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/32 :goto_8a

    nop

    nop

    :goto_d0
    if-eq v4, v1, :cond_1e

    nop

    goto/32 :goto_f

    nop

    :cond_1e
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    aget-object v1, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    move-object v13, v7

    nop

    nop

    :goto_d4
    goto/32 :goto_135

    nop

    nop

    :goto_d5
    invoke-direct {v11, v12, v14, v15}, Ldiq;-><init>(IIZ)V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v2, v0, Ldir;->a:Landroid/text/Layout;

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

    nop

    :goto_d7
    if-ge v1, v5, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    :cond_1f
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v9, v0, Ldir;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_d9
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_da
    check-cast v7, Ljava/text/Bidi;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move v14, v15

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v14, v0, Ldir;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_df
    iget-object v12, v0, Ldir;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_e0
    if-eq v6, v1, :cond_20

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_112

    nop

    :goto_e2
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    add-int/lit8 v14, v7, -0x1

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-eqz v4, :cond_21

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_21
    :goto_e5
    goto/32 :goto_5a

    nop

    nop

    :goto_e6
    neg-int v7, v7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    if-eq v13, v7, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_22
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e8
    if-eq v1, v9, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_23
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    aget-object v1, v7, v5

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-eqz p2, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v13, v12}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v14

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    return v0

    nop

    nop

    :goto_ed
    goto/32 :goto_3a

    nop

    nop

    :goto_ee
    aput-object v11, v7, v10

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_ef
    add-int v0, v0, v1

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    aput-byte v14, v11, v12

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-gtz v7, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_25
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move v12, v4

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_f4
    add-int/lit8 v2, v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_4f

    nop

    :goto_f6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-eq v9, v3, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :cond_26
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v3}, Ljava/text/Bidi;->getRunCount()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_f9
    if-ne v6, v1, :cond_27

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_27
    goto/32 :goto_142

    nop

    nop

    nop

    :goto_fa
    const/4 v5, -0x1

    nop

    nop

    :goto_fb
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    if-eqz v9, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_fd
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_146

    nop

    nop

    :goto_ff
    if-nez v9, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_100
    return v0

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_96

    nop

    nop

    :goto_102
    iget v6, v6, Ldiq;->a:I

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v7, v0, Ldir;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    if-eq v1, v6, :cond_2a

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v3, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_109
    array-length v3, v13

    nop

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

    :goto_10a
    if-nez v13, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/16 v18, 0x0

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_3b

    nop

    nop

    :goto_10d
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    new-instance v3, Ljava/text/Bidi;

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_111
    move v15, v4

    nop

    nop

    nop

    :goto_112
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_113
    move v5, v4

    nop

    :goto_114
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_115
    if-eqz p3, :cond_2c

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

    :cond_2c
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_116
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_117
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_119
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_11a
    goto :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    sub-int v10, v5, v10

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v12, v0, Ldir;->d:[Z

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_11e
    goto/16 :goto_134

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v0, v7}, Ldir;->d(I)Z

    move-result v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    return v0

    nop

    nop

    :goto_122
    goto/32 :goto_47

    nop

    nop

    :goto_123
    invoke-interface {v12, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    check-cast v14, Ljava/lang/Number;

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_125
    if-eqz v9, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_13f

    nop

    nop

    :goto_126
    if-lt v5, v3, :cond_2e

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_128
    if-ltz v7, :cond_2f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v13, v10}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v14

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

    :goto_12a
    if-eq v9, v3, :cond_30

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    aget-object v3, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget v1, v1, Ldiq;->b:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget v1, v1, Ldiq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_12f
    if-ne v1, v6, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_131
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_132
    if-eqz v5, :cond_32

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_133
    move v10, v4

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_135
    iput-object v13, v0, Ldir;->e:[C

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_136
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13a
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v3, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    if-lt v10, v3, :cond_33

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_13f
    move v4, v8

    nop

    nop

    nop

    :goto_140
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-static {v7}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result v1

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

    :goto_142
    if-ne v2, v1, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_63

    nop

    nop

    :goto_143
    aget-boolean v12, v12, v7

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

    nop

    :goto_144
    invoke-virtual {v7, v11, v10}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_145
    if-gt v1, v5, :cond_35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    :cond_35
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_147
    goto/16 :goto_ce

    nop

    :goto_148
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_149
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_14b
    new-array v13, v15, [C

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    nop

    nop

    nop

    :goto_14e
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_14f
    rem-int/lit8 v15, v15, 0x2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v13}, Ljava/text/Bidi;->getRunCount()I

    move-result v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_151
    if-eq v6, v1, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_152
    invoke-static {v7}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result v1

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_153
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_154
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_155
    goto :goto_14e

    nop

    :goto_156
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v0, v0, Ldir;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_158
    add-int/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_159
    add-int/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_15a
    if-lez v0, :cond_37

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_c9

    nop

    :goto_15b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_4
    check-cast p0, Ljava/lang/Number;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ldir;->b:Ljava/util/List;

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

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(II)I
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    if-eq v0, v2, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x3000

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x2000

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    add-int/lit8 v1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    invoke-static {v0, v2}, Luch;->a(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ldir;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    const/16 v2, 0x1680

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    if-gt p1, p2, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v2}, Luch;->a(II)I

    move-result v2

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

    :goto_1b
    if-ne v0, v2, :cond_5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    const/16 v2, 0x205f

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

    :goto_1e
    if-gez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v2, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_8

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

    :cond_8
    goto/32 :goto_d

    nop

    :goto_21
    if-lez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    const/16 v2, 0x2007

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    move p1, v1

    nop

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

    :goto_25
    const/16 v2, 0x20

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    const/16 v2, 0x200a

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldir;->a:Landroid/text/Layout;

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

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

    :goto_6
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldir;->a:Landroid/text/Layout;

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

    :goto_9
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Ldir;->b(I)I

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop
.end method
