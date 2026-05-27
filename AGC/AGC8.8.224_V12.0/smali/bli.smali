.class final Lbli;
.super Lblh;


# static fields
.field private static final f:Lozz;

.field private static final g:Lozz;

.field private static final h:Lozz;

.field private static final i:Lozz;

.field private static final j:Lozz;


# instance fields
.field private final k:Lozy;

.field private final l:Lozw;

.field private m:I

.field private n:J

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    invoke-static {v0}, Lozz;->d(Ljava/lang/String;)Lozz;

    move-result-object v0

    sput-object v0, Lbli;->f:Lozz;

    const-string v0, "\"\\"

    invoke-static {v0}, Lozz;->d(Ljava/lang/String;)Lozz;

    move-result-object v0

    sput-object v0, Lbli;->g:Lozz;

    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    invoke-static {v0}, Lozz;->d(Ljava/lang/String;)Lozz;

    move-result-object v0

    sput-object v0, Lbli;->h:Lozz;

    const-string v0, "\n\r"

    invoke-static {v0}, Lozz;->d(Ljava/lang/String;)Lozz;

    move-result-object v0

    sput-object v0, Lbli;->i:Lozz;

    const-string v0, "*/"

    invoke-static {v0}, Lozz;->d(Ljava/lang/String;)Lozz;

    move-result-object v0

    sput-object v0, Lbli;->j:Lozz;

    return-void
.end method

.method public constructor <init>(Lozy;)V
    .locals 1

    invoke-direct {p0}, Lblh;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    iput-object p1, p0, Lbli;->k:Lozy;

    check-cast p1, Lpae;

    iget-object p1, p1, Lpae;->b:Lozw;

    iput-object p1, p0, Lbli;->l:Lozw;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lblh;->l(I)V

    return-void
.end method

.method private final A()V
    .locals 5

    iget-object v0, p0, Lbli;->k:Lozy;

    sget-object v1, Lbli;->h:Lozz;

    invoke-interface {v0, v1}, Lozy;->e(Lozz;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    iget-object v2, p0, Lbli;->l:Lozw;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, v2, Lozw;->b:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Lozw;->l(J)V

    return-void
.end method

.method private final B(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x1

    return p1

    :sswitch_0
    invoke-direct {p0}, Lbli;->x()V

    :sswitch_1
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private final C(Ljava/lang/String;Ldne;)I
    .locals 5

    iget-object v0, p2, Ldne;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p2, Ldne;->b:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v1, p0, Lbli;->m:I

    iget-object p2, p0, Lbli;->d:[Ljava/lang/String;

    iget v0, p0, Lbli;->b:I

    add-int/2addr v0, v3

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private final s()C
    .locals 7

    iget-object v0, p0, Lbli;->k:Lozy;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lozy;->m(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbli;->l:Lozw;

    invoke-virtual {v0}, Lozw;->b()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    int-to-char v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v0

    throw v0

    :sswitch_0
    iget-object v0, p0, Lbli;->k:Lozy;

    const-wide/16 v1, 0x4

    invoke-interface {v0, v1, v2}, Lozy;->m(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lbli;->l:Lozw;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lozw;->a(J)B

    move-result v4

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x30

    :goto_1
    add-int/2addr v3, v4

    int-to-char v3, v3

    goto :goto_2

    :cond_0
    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    const/16 v5, 0x66

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, -0x57

    goto :goto_1

    :cond_1
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x37

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbli;->l:Lozw;

    invoke-virtual {v0, v1, v2}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v0, p0, Lbli;->l:Lozw;

    invoke-virtual {v0, v1, v2}, Lozw;->l(J)V

    return v3

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unterminated escape sequence at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    const/16 v0, 0x9

    return v0

    :sswitch_2
    const/16 v0, 0xd

    return v0

    :sswitch_3
    const/16 v0, 0xa

    return v0

    :sswitch_4
    const/16 v0, 0xc

    return v0

    :sswitch_5
    const/16 v0, 0x8

    return v0

    :sswitch_6
    int-to-char v0, v0

    return v0

    :cond_5
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private final t()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lbli;->c:[I

    iget v2, v0, Lbli;->b:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v4, v15, :cond_0

    aput v13, v1, v2

    goto/16 :goto_0

    :cond_0
    if-ne v4, v13, :cond_1

    invoke-direct {v0, v15}, Lbli;->u(Z)I

    move-result v1

    iget-object v2, v0, Lbli;->l:Lozw;

    invoke-virtual {v2}, Lozw;->b()B

    sparse-switch v1, :sswitch_data_0

    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :sswitch_0
    iput v11, v0, Lbli;->m:I

    return v11

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    goto :goto_0

    :cond_1
    if-eq v4, v7, :cond_30

    if-ne v4, v12, :cond_2

    goto/16 :goto_1a

    :cond_2
    if-ne v4, v11, :cond_3

    aput v12, v1, v2

    invoke-direct {v0, v15}, Lbli;->u(Z)I

    move-result v1

    iget-object v2, v0, Lbli;->l:Lozw;

    invoke-virtual {v2}, Lozw;->b()B

    sparse-switch v1, :sswitch_data_1

    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    iget-object v1, v0, Lbli;->k:Lozy;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lozy;->m(J)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1, v8, v9}, Lozw;->a(J)B

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    goto :goto_0

    :cond_3
    if-ne v4, v6, :cond_4

    aput v10, v1, v2

    goto :goto_0

    :cond_4
    if-ne v4, v10, :cond_6

    invoke-direct {v0, v14}, Lbli;->u(Z)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/16 v1, 0x12

    iput v1, v0, Lbli;->m:I

    return v1

    :cond_5
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    goto :goto_0

    :cond_6
    if-eq v4, v5, :cond_2f

    :cond_7
    :goto_0
    :sswitch_3
    invoke-direct {v0, v15}, Lbli;->u(Z)I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1, v8, v9}, Lozw;->a(J)B

    move-result v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_10

    const/16 v2, 0x54

    if-ne v1, v2, :cond_b

    goto :goto_5

    :sswitch_4
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iput v15, v0, Lbli;->m:I

    return v15

    :sswitch_5
    if-eq v4, v15, :cond_8

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iput v11, v0, Lbli;->m:I

    return v11

    :sswitch_6
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iput v7, v0, Lbli;->m:I

    return v7

    :goto_1
    :sswitch_7
    if-eq v4, v15, :cond_a

    if-ne v4, v13, :cond_9

    goto :goto_2

    :cond_9
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :cond_a
    :goto_2
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    iput v10, v0, Lbli;->m:I

    return v10

    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iput v5, v0, Lbli;->m:I

    return v5

    :sswitch_9
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    const/16 v1, 0x9

    iput v1, v0, Lbli;->m:I

    return v1

    :cond_b
    const/16 v2, 0x66

    if-eq v1, v2, :cond_f

    const/16 v2, 0x46

    if-ne v1, v2, :cond_c

    goto :goto_4

    :cond_c
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_e

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    :goto_3
    const-string v1, "NULL"

    const-string v2, "null"

    const/4 v3, 0x7

    goto :goto_6

    :cond_f
    :goto_4
    const-string v1, "FALSE"

    const-string v2, "false"

    const/4 v3, 0x6

    goto :goto_6

    :cond_10
    :goto_5
    const-string v1, "TRUE"

    const-string v2, "true"

    const/4 v3, 0x5

    :goto_6
    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Lbli;->k:Lozy;

    add-int/lit8 v14, v4, 0x1

    int-to-long v6, v14

    invoke-interface {v5, v6, v7}, Lozy;->m(J)Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    iget-object v5, v0, Lbli;->l:Lozw;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lozw;->a(J)B

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_12

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_12

    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    move v4, v14

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v14, 0x0

    goto :goto_7

    :cond_13
    iget-object v1, v0, Lbli;->k:Lozy;

    add-int/lit8 v2, v5, 0x1

    int-to-long v6, v2

    invoke-interface {v1, v6, v7}, Lozy;->m(J)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lbli;->l:Lozw;

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Lozw;->a(J)B

    move-result v1

    invoke-direct {v0, v1}, Lbli;->B(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v3, 0x0

    goto :goto_8

    :cond_14
    iget-object v1, v0, Lbli;->l:Lozw;

    int-to-long v4, v5

    invoke-virtual {v1, v4, v5}, Lozw;->l(J)V

    iput v3, v0, Lbli;->m:I

    :goto_8
    if-nez v3, :cond_2e

    move-wide v3, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_9
    iget-object v7, v0, Lbli;->k:Lozy;

    add-int/lit8 v14, v1, 0x1

    int-to-long v8, v14

    invoke-interface {v7, v8, v9}, Lozy;->m(J)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_14

    :cond_15
    iget-object v7, v0, Lbli;->l:Lozw;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lozw;->a(J)B

    move-result v7

    sparse-switch v7, :sswitch_data_3

    const/16 v8, 0x30

    if-lt v7, v8, :cond_23

    const/16 v8, 0x39

    if-le v7, v8, :cond_19

    goto/16 :goto_13

    :sswitch_a
    if-eq v2, v13, :cond_16

    if-ne v2, v11, :cond_18

    :cond_16
    const/4 v2, 0x5

    goto :goto_b

    :sswitch_b
    if-ne v2, v13, :cond_18

    const/4 v2, 0x3

    goto :goto_b

    :sswitch_c
    if-nez v2, :cond_17

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    if-ne v2, v12, :cond_18

    goto :goto_a

    :sswitch_d
    if-ne v2, v12, :cond_18

    :goto_a
    const/4 v2, 0x6

    :goto_b
    const/4 v8, 0x3

    :goto_c
    const/4 v9, 0x6

    goto :goto_12

    :cond_18
    :goto_d
    const/4 v14, 0x0

    goto/16 :goto_19

    :cond_19
    if-eq v2, v15, :cond_21

    if-nez v2, :cond_1a

    const/4 v8, 0x3

    const/4 v9, 0x6

    goto :goto_11

    :cond_1a
    if-ne v2, v13, :cond_1e

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1b
    const-wide/16 v8, 0xa

    mul-long v8, v8, v3

    add-int/lit8 v7, v7, -0x30

    const-wide v16, -0xcccccccccccccccL

    cmp-long v1, v3, v16

    int-to-long v10, v7

    sub-long/2addr v8, v10

    if-gtz v1, :cond_1d

    cmp-long v1, v3, v16

    if-nez v1, :cond_1c

    cmp-long v1, v8, v3

    if-gez v1, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_f

    :cond_1d
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/2addr v6, v1

    move-wide v3, v8

    goto :goto_b

    :cond_1e
    const/4 v8, 0x3

    if-ne v2, v8, :cond_1f

    const/4 v2, 0x4

    goto :goto_c

    :cond_1f
    if-eq v2, v12, :cond_20

    const/4 v9, 0x6

    if-ne v2, v9, :cond_22

    goto :goto_10

    :cond_20
    const/4 v9, 0x6

    :goto_10
    const/4 v2, 0x7

    goto :goto_12

    :cond_21
    const/4 v8, 0x3

    const/4 v9, 0x6

    :goto_11
    add-int/lit8 v7, v7, -0x30

    neg-int v1, v7

    int-to-long v3, v1

    const/4 v2, 0x2

    :cond_22
    :goto_12
    move v1, v14

    const-wide/16 v8, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x4

    goto/16 :goto_9

    :cond_23
    :goto_13
    invoke-direct {v0, v7}, Lbli;->B(I)Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_d

    :cond_24
    :goto_14
    if-ne v2, v13, :cond_29

    if-eqz v6, :cond_28

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v3, v6

    if-nez v2, :cond_25

    if-eqz v5, :cond_28

    goto :goto_15

    :cond_25
    move v15, v5

    :goto_15
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_26

    if-nez v15, :cond_28

    goto :goto_16

    :cond_26
    if-eqz v15, :cond_27

    goto :goto_17

    :cond_27
    :goto_16
    neg-long v3, v3

    :goto_17
    iput-wide v3, v0, Lbli;->n:J

    iget-object v2, v0, Lbli;->l:Lozw;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lozw;->l(J)V

    const/16 v14, 0x10

    iput v14, v0, Lbli;->m:I

    goto :goto_19

    :cond_28
    const/4 v2, 0x2

    :cond_29
    if-eq v2, v13, :cond_2b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2a

    goto :goto_18

    :cond_2a
    const/4 v14, 0x0

    goto :goto_19

    :cond_2b
    :goto_18
    iput v1, v0, Lbli;->o:I

    const/16 v14, 0x11

    iput v14, v0, Lbli;->m:I

    :goto_19
    if-eqz v14, :cond_2c

    return v14

    :cond_2c
    iget-object v1, v0, Lbli;->l:Lozw;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lozw;->a(J)B

    move-result v1

    invoke-direct {v0, v1}, Lbli;->B(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    const/16 v1, 0xa

    iput v1, v0, Lbli;->m:I

    return v1

    :cond_2d
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :cond_2e
    return v3

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_1a
    const/4 v3, 0x4

    aput v3, v1, v2

    if-ne v4, v12, :cond_31

    invoke-direct {v0, v15}, Lbli;->u(Z)I

    move-result v1

    iget-object v2, v0, Lbli;->l:Lozw;

    invoke-virtual {v2}, Lozw;->b()B

    sparse-switch v1, :sswitch_data_4

    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :sswitch_e
    iput v13, v0, Lbli;->m:I

    return v13

    :sswitch_f
    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    :cond_31
    :sswitch_10
    invoke-direct {v0, v15}, Lbli;->u(Z)I

    move-result v1

    const-string v2, "Expected name"

    sparse-switch v1, :sswitch_data_5

    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    int-to-char v1, v1

    invoke-direct {v0, v1}, Lbli;->B(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0xe

    iput v1, v0, Lbli;->m:I

    return v1

    :sswitch_11
    if-eq v4, v12, :cond_32

    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iput v13, v0, Lbli;->m:I

    return v13

    :cond_32
    invoke-virtual {v0, v2}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    throw v1

    :sswitch_12
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    invoke-direct/range {p0 .. p0}, Lbli;->x()V

    const/16 v1, 0xc

    iput v1, v0, Lbli;->m:I

    return v1

    :sswitch_13
    iget-object v1, v0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    const/16 v1, 0xd

    iput v1, v0, Lbli;->m:I

    return v1

    :cond_33
    invoke-virtual {v0, v2}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v1

    goto :goto_1c

    :goto_1b
    throw v1

    :goto_1c
    goto :goto_1b

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_3
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3a -> :sswitch_3
        0x3d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x2c -> :sswitch_7
        0x3b -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x7b -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2b -> :sswitch_d
        0x2d -> :sswitch_c
        0x2e -> :sswitch_b
        0x45 -> :sswitch_a
        0x65 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x2c -> :sswitch_10
        0x3b -> :sswitch_f
        0x7d -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x22 -> :sswitch_13
        0x27 -> :sswitch_12
        0x7d -> :sswitch_11
    .end sparse-switch
.end method

.method private final u(Z)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lbli;->k:Lozy;

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lozy;->m(J)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lbli;->l:Lozw;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lozw;->a(J)B

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lbli;->l:Lozw;

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lozw;->l(J)V

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lbli;->k:Lozy;

    const-wide/16 v3, 0x2

    invoke-interface {v1, v3, v4}, Lozy;->m(J)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Lbli;->x()V

    iget-object v1, p0, Lbli;->l:Lozw;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Lozw;->a(J)B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    return v2

    :sswitch_0
    iget-object v1, p0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iget-object v1, p0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    invoke-direct {p0}, Lbli;->z()V

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iget-object v1, p0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    iget-object v1, p0, Lbli;->k:Lozy;

    sget-object v2, Lbli;->j:Lozz;

    invoke-interface {v1, v2}, Lozy;->d(Lozz;)J

    move-result-wide v3

    iget-object v1, p0, Lbli;->l:Lozw;

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lozz;->b()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v3, v6

    goto :goto_2

    :cond_3
    iget-wide v3, v1, Lozw;->b:J

    :goto_2
    invoke-virtual {v1, v3, v4}, Lozw;->l(J)V

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object p1

    throw p1

    :cond_5
    const/16 v2, 0x23

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lbli;->x()V

    invoke-direct {p0}, Lbli;->z()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_3
    move v1, v3

    goto/16 :goto_0

    :cond_8
    if-nez p1, :cond_9

    const/4 p1, -0x1

    return p1

    :cond_9
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private final v(Lozz;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbli;->k:Lozy;

    invoke-interface {v1, p1}, Lozy;->e(Lozz;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    iget-object v3, p0, Lbli;->l:Lozw;

    invoke-virtual {v3, v1, v2}, Lozw;->a(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget-object v3, p0, Lbli;->l:Lozw;

    invoke-virtual {v3, v1, v2}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbli;->l:Lozw;

    invoke-virtual {v1}, Lozw;->b()B

    invoke-direct {p0}, Lbli;->s()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lbli;->l:Lozw;

    invoke-virtual {p1, v1, v2}, Lozw;->h(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbli;->l:Lozw;

    invoke-virtual {v0}, Lozw;->b()B

    return-object p1

    :cond_2
    iget-object p1, p0, Lbli;->l:Lozw;

    invoke-virtual {p1, v1, v2}, Lozw;->h(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbli;->l:Lozw;

    invoke-virtual {p1}, Lozw;->b()B

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final w()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lbli;->k:Lozy;

    sget-object v1, Lbli;->h:Lozz;

    invoke-interface {v0, v1}, Lozy;->e(Lozz;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lbli;->l:Lozw;

    invoke-virtual {v2, v0, v1}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbli;->l:Lozw;

    iget-wide v1, v0, Lozw;->b:J

    sget-object v3, Looj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2, v3}, Lozw;->g(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final x()V
    .locals 1

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object v0

    throw v0
.end method

.method private final y(Lozz;)V
    .locals 6

    :goto_0
    iget-object v0, p0, Lbli;->k:Lozy;

    invoke-interface {v0, p1}, Lozy;->e(Lozz;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lbli;->l:Lozw;

    invoke-virtual {v2, v0, v1}, Lozw;->a(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbli;->l:Lozw;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lozw;->l(J)V

    invoke-direct {p0}, Lbli;->s()C

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbli;->l:Lozw;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lozw;->l(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lblh;->c(Ljava/lang/String;)Lblg;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final z()V
    .locals 5

    iget-object v0, p0, Lbli;->k:Lozy;

    sget-object v1, Lbli;->i:Lozz;

    invoke-interface {v0, v1}, Lozy;->e(Lozz;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    iget-object v2, p0, Lbli;->l:Lozw;

    if-eqz v4, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-wide v0, v2, Lozw;->b:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Lozw;->l(J)V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 8

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lbli;->n:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lbli;->l:Lozw;

    iget v1, p0, Lbli;->o:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    sget-object v0, Lbli;->g:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sget-object v0, Lbli;->f:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lbli;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    :goto_0
    iput v4, p0, Lbli;->m:I

    :try_start_0
    iget-object v0, p0, Lbli;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, p0, Lbli;->p:Ljava/lang/String;

    iput v2, p0, Lbli;->m:I

    iget-object v2, p0, Lbli;->e:[I

    iget v3, p0, Lbli;->b:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    :cond_6
    new-instance v2, Lblg;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lblg;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v0, Lblf;

    iget-object v1, p0, Lbli;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 9

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lbli;->n:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    iput v2, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_1
    new-instance v2, Lblf;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lblf;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbli;->l:Lozw;

    iget v1, p0, Lbli;->o:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sget-object v0, Lbli;->f:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lbli;->g:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lbli;->m:I

    iget-object v1, p0, Lbli;->e:[I

    iget v6, p0, Lbli;->b:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :goto_1
    iput v5, p0, Lbli;->m:I

    :try_start_1
    iget-object v0, p0, Lbli;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lbli;->p:Ljava/lang/String;

    iput v2, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_7
    new-instance v0, Lblf;

    iget-object v1, p0, Lbli;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lblf;

    iget-object v1, p0, Lbli;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    iget-object v1, p0, Lbli;->c:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lbli;->b:I

    iget-object v0, p0, Lbli;->l:Lozw;

    invoke-virtual {v0}, Lozw;->k()V

    iget-object v0, p0, Lbli;->k:Lozy;

    invoke-interface {v0}, Lozy;->close()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbli;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Lbli;->g:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Lbli;->f:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lbli;->p:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lbli;->m:I

    iget-object v1, p0, Lbli;->d:[Ljava/lang/String;

    iget v2, p0, Lbli;->b:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_4
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbli;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    sget-object v0, Lbli;->g:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    sget-object v0, Lbli;->f:Lozz;

    invoke-direct {p0, v0}, Lbli;->v(Lozz;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lbli;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lbli;->p:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lbli;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbli;->l:Lozw;

    iget v1, p0, Lbli;->o:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lozw;->h(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lbli;->m:I

    iget-object v1, p0, Lbli;->e:[I

    iget v2, p0, Lbli;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lblh;->l(I)V

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    iput v2, p0, Lbli;->m:I

    return-void

    :cond_1
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lblh;->l(I)V

    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    return-void

    :cond_1
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lbli;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbli;->b:I

    iget-object v1, p0, Lbli;->e:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    return-void

    :cond_1
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected END_ARRAY but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lbli;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbli;->b:I

    iget-object v1, p0, Lbli;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lbli;->e:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    return-void

    :cond_1
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected END_OBJECT but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()V
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbli;->A()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Lbli;->g:Lozz;

    invoke-direct {p0, v0}, Lbli;->y(Lozz;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Lbli;->f:Lozz;

    invoke-direct {p0, v0}, Lbli;->y(Lozz;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->d:[Ljava/lang/String;

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_4
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lbli;->m:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lbli;->t()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Lblh;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v3}, Lblh;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    iget v2, p0, Lbli;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbli;->b:I

    goto/16 :goto_3

    :cond_4
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    iget v2, p0, Lbli;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbli;->b:I

    goto/16 :goto_3

    :cond_6
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x9

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    goto :goto_1

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    goto :goto_0

    :cond_a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lbli;->l:Lozw;

    iget v3, p0, Lbli;->o:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lozw;->l(J)V

    goto :goto_3

    :cond_b
    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_0
    sget-object v2, Lbli;->f:Lozz;

    invoke-direct {p0, v2}, Lbli;->y(Lozz;)V

    goto :goto_3

    :cond_e
    :goto_1
    sget-object v2, Lbli;->g:Lozz;

    invoke-direct {p0, v2}, Lbli;->y(Lozz;)V

    goto :goto_3

    :cond_f
    :goto_2
    invoke-direct {p0}, Lbli;->A()V

    :goto_3
    iput v0, p0, Lbli;->m:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lbli;->d:[Ljava/lang/String;

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 5

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iput v3, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    return v2

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v3, p0, Lbli;->m:I

    iget-object v0, p0, Lbli;->e:[I

    iget v1, p0, Lbli;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v4, v0, v1

    add-int/2addr v4, v2

    aput v4, v0, v1

    return v3

    :cond_2
    new-instance v0, Lblf;

    invoke-virtual {p0}, Lbli;->q()I

    move-result v1

    invoke-static {v1}, Lbze;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lblh;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a boolean but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lbli;->m:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbli;->t()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ldne;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lbli;->m:I

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lbli;->t()I

    move-result v2

    :cond_0
    const/16 v3, 0xc

    const/4 v4, -0x1

    if-lt v2, v3, :cond_16

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    goto/16 :goto_a

    :cond_1
    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lbli;->p:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lbli;->C(Ljava/lang/String;Ldne;)I

    move-result v1

    return v1

    :cond_2
    iget-object v2, v0, Lbli;->k:Lozy;

    iget-object v5, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v2, Lpae;

    iget-boolean v6, v2, Lpae;->c:Z

    if-nez v6, :cond_15

    :goto_0
    iget-object v6, v2, Lpae;->b:Lozw;

    sget v7, Lpaj;->a:I

    iget-object v6, v6, Lozw;->a:Lpaf;

    if-nez v6, :cond_3

    const/4 v7, -0x2

    goto/16 :goto_8

    :cond_3
    iget-object v9, v6, Lpaf;->a:[B

    iget v10, v6, Lpaf;->b:I

    iget v11, v6, Lpaf;->c:I

    move-object v12, v5

    check-cast v12, Lpac;

    iget-object v12, v12, Lpac;->b:[I

    move-object v14, v6

    const/4 v13, 0x0

    const/4 v15, -0x1

    :goto_1
    aget v7, v12, v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    aget v3, v12, v13

    if-eq v3, v4, :cond_4

    move v15, v3

    :cond_4
    if-nez v14, :cond_5

    const/4 v7, -0x2

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v13, v13, 0x1

    if-gez v7, :cond_c

    neg-int v7, v7

    add-int/2addr v7, v13

    :goto_2
    add-int/lit8 v3, v10, 0x1

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v8, v13, 0x1

    aget v13, v12, v13

    if-eq v10, v13, :cond_6

    goto :goto_6

    :cond_6
    if-ne v8, v7, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-ne v3, v11, :cond_a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v14, Lpaf;->f:Lpaf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v3, Lpaf;->b:I

    iget-object v11, v3, Lpaf;->a:[B

    iget v13, v3, Lpaf;->c:I

    if-ne v3, v6, :cond_9

    if-eqz v10, :cond_8

    move v3, v9

    move-object v9, v11

    move v11, v13

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    const/4 v7, -0x2

    goto :goto_8

    :cond_9
    move-object v14, v3

    move v3, v9

    move-object v9, v11

    move v11, v13

    goto :goto_4

    :cond_a
    :goto_4
    if-eqz v10, :cond_b

    aget v7, v12, v8

    move v10, v3

    goto :goto_7

    :cond_b
    move v10, v3

    move v13, v8

    goto :goto_2

    :cond_c
    add-int/lit8 v3, v10, 0x1

    aget-byte v8, v9, v10

    and-int/lit16 v8, v8, 0xff

    add-int v10, v13, v7

    :goto_5
    if-ne v13, v10, :cond_d

    :goto_6
    move v7, v15

    goto :goto_8

    :cond_d
    aget v4, v12, v13

    if-ne v8, v4, :cond_14

    add-int/2addr v13, v7

    aget v7, v12, v13

    if-ne v3, v11, :cond_e

    iget-object v14, v14, Lpaf;->f:Lpaf;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v14, Lpaf;->b:I

    iget-object v4, v14, Lpaf;->a:[B

    iget v8, v14, Lpaf;->c:I

    move v10, v3

    move-object v9, v4

    move v11, v8

    if-ne v14, v6, :cond_f

    const/4 v14, 0x0

    goto :goto_7

    :cond_e
    move v10, v3

    :cond_f
    :goto_7
    if-ltz v7, :cond_13

    :goto_8
    packed-switch v7, :pswitch_data_0

    check-cast v5, Lpac;

    iget-object v3, v5, Lpac;->a:[Lozz;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lozz;->b()I

    move-result v3

    iget-object v2, v2, Lpae;->b:Lozw;

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lozw;->l(J)V

    goto :goto_9

    :pswitch_0
    const/4 v7, -0x1

    goto :goto_9

    :pswitch_1
    iget-object v3, v2, Lpae;->a:Lpai;

    iget-object v4, v2, Lpae;->b:Lozw;

    invoke-interface {v3, v4}, Lpai;->t(Lozw;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_10

    const/4 v7, -0x1

    goto :goto_9

    :cond_10
    const/16 v3, 0xf

    const/4 v4, -0x1

    goto/16 :goto_0

    :goto_9
    const/4 v2, -0x1

    if-eq v7, v2, :cond_11

    const/4 v4, 0x0

    iput v4, v0, Lbli;->m:I

    iget-object v3, v0, Lbli;->d:[Ljava/lang/String;

    iget v4, v0, Lbli;->b:I

    add-int/2addr v4, v2

    iget-object v1, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v3, v4

    return v7

    :cond_11
    iget-object v3, v0, Lbli;->d:[Ljava/lang/String;

    iget v4, v0, Lbli;->b:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lbli;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lbli;->C(Ljava/lang/String;Ldne;)I

    move-result v1

    if-ne v1, v2, :cond_12

    const/16 v8, 0xf

    iput v8, v0, Lbli;->m:I

    iput-object v4, v0, Lbli;->p:Ljava/lang/String;

    iget-object v1, v0, Lbli;->d:[Ljava/lang/String;

    iget v4, v0, Lbli;->b:I

    add-int/2addr v4, v2

    aput-object v3, v1, v4

    return v2

    :cond_12
    return v1

    :cond_13
    const/4 v4, 0x0

    const/16 v8, 0xf

    neg-int v13, v7

    const/16 v3, 0xf

    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_14
    const/4 v4, 0x0

    const/16 v17, 0xf

    add-int/lit8 v13, v13, 0x1

    const/4 v4, -0x1

    goto/16 :goto_5

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_a
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbli;->k:Lozy;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonReader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
