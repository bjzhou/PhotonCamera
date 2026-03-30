.class public final Lshy;
.super Lshi;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lsho;

.field private static final serialVersionUID:J


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget v0, Lshr;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lshy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lshy;->a:Lsho;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lshy;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lshi;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    const/4 v0, 0x1

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
    iput-boolean v0, p0, Lshy;->c:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput v0, p0, Lshy;->b:I

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
.end method

.method public static f([BI)I
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v0, p1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v1, v0, p0}, Lrrf;->N(BBBB)I

    move-result p0

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

    :goto_3
    aget-byte v2, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    aget-byte v0, p0, v0

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

    nop

    :goto_5
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int/lit8 v2, p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    aget-byte p0, p0, p1

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int/lit8 v1, p1, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    aget-byte v1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static g(II)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0xd

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

    :goto_1
    return p0

    nop

    nop

    :goto_2
    xor-int/2addr p0, p1

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

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 p0, p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const p1, -0x19ab949c

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
.end method

.method public static h(I)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    mul-int/2addr p0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

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

    :goto_3
    const v0, -0x3361d2af    # -8.293031E7f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    mul-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0xf

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x1b873593

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
.end method

.method public static i(II)Lshn;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget v0, Lshn;->b:I

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

    :goto_1
    mul-int/2addr p0, v0

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

    :goto_2
    xor-int/2addr p0, v0

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
    xor-int/2addr p0, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lshm;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    ushr-int/lit8 v0, p0, 0x10

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

    :goto_7
    xor-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const p1, -0x7a143595

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, -0x3d4d51cb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    mul-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    xor-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    new-instance p1, Lshm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    ushr-int/lit8 p1, p0, 0xd

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

    :goto_e
    ushr-int/lit8 p1, p0, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lshn;
    .locals 21

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    or-long v14, v14, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2
    long-to-int v2, v8

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3
    int-to-long v2, v8

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_4
    or-long v8, v9, v2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    shl-long/2addr v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_7
    move v11, v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v15, 0xc0

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lshi;->a([B)Lshn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_a
    if-ge v8, v11, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_0
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v14, 0xe0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_e
    or-long/2addr v12, v14

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_10
    const/16 v12, 0x800

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_11
    xor-int/2addr v0, v6

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

    :goto_12
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_14
    and-int/lit8 v8, v8, 0x3f

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-long v12, v15

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

    nop

    :goto_19
    or-long/2addr v0, v2

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

    :goto_1a
    int-to-long v0, v8

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    or-int/2addr v5, v12

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

    :goto_1c
    add-int/lit8 v15, v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_1d
    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1e
    or-long v12, v12, v19

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    or-long/2addr v0, v14

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    shl-long v14, v14, v18

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_22
    shl-int/lit8 v10, v15, 0x18

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    shl-long/2addr v12, v15

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_26
    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_27
    or-long v8, v9, v12

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9e

    nop

    :goto_29
    and-int/lit8 v14, v14, 0x3f

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0}, Lshi;->a([B)Lshn;

    move-result-object v0

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

    nop

    nop

    :goto_2b
    if-lt v14, v11, :cond_2

    nop

    goto/32 :goto_7b

    nop

    :cond_2
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v13, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_2d
    move v11, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2e
    shl-long/2addr v2, v4

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

    :goto_2f
    int-to-long v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_30
    move-object/from16 v2, p2

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

    nop

    :goto_31
    or-int/2addr v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_32
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_33
    and-int/lit8 v15, v11, 0x3f

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

    :goto_34
    invoke-static {v6, v5}, Lshy;->g(II)I

    move-result v6

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_35
    ushr-long/2addr v8, v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v11, v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v4, v4, -0x20

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_b2

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    :goto_3a
    shl-int/lit8 v9, v14, 0x10

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    or-long/2addr v11, v13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    or-long/2addr v2, v12

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3d
    const v11, 0xd800

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3e
    or-long/2addr v2, v12

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v11, 0x80

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_42
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    if-le v8, v3, :cond_4

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_44
    if-lt v13, v11, :cond_5

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v11, v1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object/from16 v2, p2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_47
    shl-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-object v0

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v5}, Lshy;->h(I)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0, v7}, Lshy;->i(II)Lshn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_4c
    shl-long/2addr v12, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/lit8 v7, v7, 0x2

    nop

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

    :goto_4e
    shl-int/lit8 v5, v13, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4f
    and-int/lit8 v12, v8, 0x3f

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_50
    invoke-static {v6, v2}, Lshy;->g(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_51
    move v6, v2

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_53
    or-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v14, v5, 0x2

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_55
    shl-long/2addr v0, v8

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

    :goto_56
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_58
    and-int/lit8 v0, v8, 0x3f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_59
    const/16 v13, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

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

    :goto_5b
    or-long v8, v9, v11

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5c
    ushr-int/lit8 v8, v11, 0x12

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_5d
    ushr-int/lit8 v8, v11, 0xc

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move v7, v6

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_61
    add-int/lit8 v4, v4, 0x10

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lt v8, v11, :cond_6

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_6
    goto/32 :goto_6a

    nop

    nop

    :goto_63
    or-int/2addr v5, v10

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_64
    add-int/lit8 v4, v4, 0x20

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_66
    add-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_67
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_68
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_69
    const-wide/16 v19, 0x80

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    int-to-long v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6b
    if-lt v15, v11, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/lit8 v4, v4, 0x8

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-wide/16 v17, 0xf0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_6e
    invoke-static {v0}, Lshy;->h(I)I

    move-result v0

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

    :goto_6f
    return-object v0

    nop

    :goto_70
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    ushr-int/lit8 v8, v8, 0x6

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_72
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v3, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_74
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_75
    add-int/lit8 v8, v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_76
    if-gt v8, v11, :cond_8

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

    nop

    nop

    :goto_77
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_78
    or-long/2addr v13, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_7c
    int-to-long v12, v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    shl-long/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_7e
    or-long/2addr v0, v12

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    shl-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    or-int/2addr v12, v11

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_82
    long-to-int v0, v9

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_83
    ushr-int/lit8 v2, v8, 0x6

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    int-to-long v11, v12

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_85
    add-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_86
    int-to-long v14, v14

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

    :goto_87
    or-long v2, v2, v17

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

    :goto_88
    if-lt v8, v12, :cond_9

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_89
    if-ge v4, v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_8b
    invoke-interface {v1, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_8c
    add-int/lit8 v7, v7, 0x3

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_8d
    invoke-static {v2}, Lshy;->h(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_8e
    move v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8f
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_90
    goto/16 :goto_93

    nop

    nop

    :goto_91
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    add-int/lit8 v4, v4, 0x18

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {v1, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_95
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_96
    const/16 v15, 0x18

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_97
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_98
    move v5, v4

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

    nop

    :goto_99
    shl-int/2addr v12, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_9a
    const/16 v1, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_9b
    if-lt v12, v11, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    and-int/lit8 v2, v2, 0x3f

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9d
    ushr-int/lit8 v14, v11, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_9e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_74

    nop

    nop

    :goto_a0
    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a1
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    int-to-long v2, v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const/16 v8, 0x8

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_a8
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a9
    ushr-int/lit8 v3, v8, 0xc

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-wide v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move v1, v11

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_ac
    int-to-long v13, v8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_ad
    or-long v8, v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_ae
    or-long v0, v0, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-lt v5, v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :cond_c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_b0
    const v11, 0xdfff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_7

    nop

    nop

    :goto_b3
    const/16 v18, 0x10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final d([BI)Lshn;
    .locals 4

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    shl-int/2addr v3, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    if-le v2, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Lshy;->f([BI)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1e

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    move v1, p0

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move p0, v2

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

    :goto_a
    xor-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt p0, p2, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    xor-int/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    :goto_11
    invoke-static {v0}, Lshy;->h(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v2, p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    :goto_14
    invoke-static {v3}, Lsgj;->aa(B)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    invoke-static {v1, p0}, Lshy;->g(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    array-length p0, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Lshy;->h(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    invoke-static {v0, p2, p0}, Lrrf;->w(III)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    aget-byte v3, p1, p0

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

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p2}, Lshy;->i(II)Lshn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    move p0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_25
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final e()Lshp;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lshx;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lshx;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p1, Lshy;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-boolean p0, p1, Lshy;->c:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    instance-of p0, p1, Lshy;

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

    :goto_6
    check-cast p1, Lshy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

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
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const-string p0, "Hashing.murmur3_32(0)"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
