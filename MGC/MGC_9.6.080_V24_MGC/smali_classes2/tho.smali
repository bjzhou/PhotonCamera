.class public final Ltho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/io/Writer;

.field public c:Ljava/lang/String;

.field public d:I

.field private g:[I

.field private h:I

.field private final i:Ltdd;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(I)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    iput v2, p0, Ltho;->h:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    array-length v2, v1

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    if-eq v0, v2, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Ltho;->g:[I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Ltho;->h:I

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

    :goto_a
    add-int/2addr v0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Ltho;->h:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget-object v0, p0, Ltho;->g:[I

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

    :goto_10
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Ltho;->g:[I

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Ltho;->h:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v1, Ltdd;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, v3, Ltdd;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Ltho;->l:Z

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

    :goto_15
    iget-object v1, p0, Ltho;->i:Ltdd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    iget-object v3, p0, Ltho;->i:Ltdd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ltho;->g:[I

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p0, p0, -0x1

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

    :goto_3
    iget p0, p0, Ltho;->h:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    aput p1, v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltho;->e:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "\\u003e"

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4
    const-string v2, "\\r"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object v2, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-object v1, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    aput-object v2, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v2, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-string v2, "\\f"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x27

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->hiePw:Ljava/lang/String;

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

    :goto_f
    const/4 v0, 0x0

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    sput-object v0, Ltho;->f:[Ljava/lang/String;

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

    :goto_12
    sput-object v0, Ltho;->e:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x3e

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

    :goto_16
    sget-object v2, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->pSRFGUhEGyqe:Ljava/lang/String;

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

    :goto_17
    const/16 v2, 0x3c

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_18
    const/16 v1, 0x8

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

    :goto_19
    aput-object v2, v0, v1

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

    nop

    nop

    :goto_1a
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    nop

    :goto_1d
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "\\u%04x"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v0, v0, 0x1

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
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_23
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "\\t"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0x3d

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

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1a

    nop

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

    :goto_29
    new-array v0, v0, [Ljava/lang/String;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v0, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_2f
    if-le v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sput-object v0, Ltho;->a:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    const-string v1, "\\u003c"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput-object v2, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    sget-object v2, Ltho;->e:[Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v1, 0x9

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    aput-object v2, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_39
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, "\\\""

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v2, "\\n"

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

    :goto_3c
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3d
    const-string v0, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3e
    const-string v2, "\\b"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v1, 0x26

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_42
    const/16 v1, 0x22

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

    nop

    :goto_43
    const-string v2, "\\u0026"

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_44
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v1, 0x5c

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_46
    const-string v2, "\\u003d"

    nop

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
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    const-string v1, ":"

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

    :goto_2
    iget-boolean v1, p1, Ltdd;->d:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    iput v0, p0, Ltho;->h:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Ltho;->d:I

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

    nop

    :goto_a
    const/4 v1, 0x2

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

    :goto_b
    iput-object v0, p0, Ltho;->g:[I

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

    :goto_c
    iput-object p1, p0, Ltho;->i:Ltdd;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

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

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

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

    :goto_12
    iput-object p1, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-direct {p0, v1}, Ltho;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-array v0, v0, [I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Ltdd;->c:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Ltdd;->a:Ltdd;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    iput-object v1, p0, Ltho;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p1, Ltdd;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    iget-object v1, p1, Ltdd;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Ltho;->k:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Ltho;->k:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, p0, Ltho;->j:Ljava/lang/String;

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    const-string v1, ": "

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v0, p0, Ltho;->l:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, ","

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_24

    nop

    :goto_30
    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

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
    iget-object p0, p0, Ltho;->g:[I

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

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "JsonWriter is closed."

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ltho;->h:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget p0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    goto/16 :goto_27

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltho;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_23

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

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

    :goto_5
    goto/32 :goto_24

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ltho;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    const-string v0, "JSON must have only one top-level value."

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

    :goto_9
    invoke-virtual {p0}, Ltho;->a()I

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v1}, Ltho;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    if-ne v0, v2, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    iget-object v1, p0, Ltho;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v0, v3, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_16
    if-eq v0, v2, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Ltho;->d:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x2

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

    :goto_21
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    invoke-direct {p0, v3}, Ltho;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v0, "Nesting problem."

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    :goto_2d
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Ltho;->k:Ljava/lang/String;

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

    :goto_30
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0}, Ltho;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

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

    :goto_2
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    aget-object v6, v1, v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x22

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    const/16 v7, 0x2029

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_9
    move v4, v3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_c
    iget-object v3, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v4, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_f
    const-string v6, "\\u2029"

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p1, v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v7, 0x80

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

    :goto_18
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    if-lt v6, v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iget-object p0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-lt v3, v0, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_10

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1f
    if-nez v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    :goto_23
    move v4, v5

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_25
    const-string v6, "\\u2028"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    if-lt v4, v3, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v0, v4

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

    nop

    :goto_28
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v6, v7, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    move v3, v5

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

    nop

    :goto_2d
    iget-object v7, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2f
    const/16 v7, 0x2028

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v5, v3, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v6, v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v7, p1, v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_35
    sget-object v1, Ltho;->e:[Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-int/2addr v3, v4

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
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, p0, Ltho;->h:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const-string v0, "Incomplete document"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget v0, p0, Ltho;->h:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-le v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/io/IOException;

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

    :goto_b
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltho;->g:[I

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

    :goto_14
    if-eq v0, v1, :cond_2

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

    :cond_2
    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    aget v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Nesting problem."

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ltho;->k:Ljava/lang/String;

    nop

    goto/32 :goto_13

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    iget-object v0, p0, Ltho;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ltho;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ltho;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ltho;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_16
    invoke-virtual {p0, v0}, Ltho;->c(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_20

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x3

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

    :goto_1b
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Ltho;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    const v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Ltho;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    new-instance p0, Ljava/lang/IllegalStateException;

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

    nop

    nop
.end method

.method public final e(IIC)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iget p1, p0, Ltho;->h:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string p0, "Dangling name: "

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

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ltho;->19e596a3e324281407eb5c11093c0152m()V

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Ltho;->h:I

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

    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-eq v0, p1, :cond_1

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ltho;->a()I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-eq v0, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    :goto_10
    const-string p1, "Nesting problem."

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_13
    iget-object p1, p0, Ltho;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(I)V

    goto/32 :goto_18

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltho;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltho;->c:Ljava/lang/String;

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
    invoke-virtual {p0}, Ltho;->d()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "null"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final flush()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltho;->b:Ljava/io/Writer;

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

    :goto_1
    iget v0, p0, Ltho;->h:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_6
    const-string v0, "JsonWriter is closed."

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(IC)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ltho;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltho;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltho;->b:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
