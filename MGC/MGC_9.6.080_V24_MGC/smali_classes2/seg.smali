.class public final Lseg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lseg;

.field private static final e:J


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    int-to-long v7, v4

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

    :goto_1
    int-to-long v5, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    const/4 v4, 0x7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v9, 0x3

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

    :goto_6
    const-string v4, " #(+,-0"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v0, v2, v2}, Lseg;-><init>(III)V

    goto/32 :goto_20

    nop

    nop

    :goto_e
    mul-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const/4 v2, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    shl-long v4, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lseg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    add-long/2addr v5, v9

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    sput-wide v1, Lseg;->e:J

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    move v3, v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v4, v4, -0x20

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    long-to-int v4, v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v1, Lseg;->a:Lseg;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    if-lt v3, v4, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

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

    :goto_23
    or-long/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(III)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lseg;->d:I

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
    iput p1, p0, Lseg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lseg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static a(C)I
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    sget-wide v0, Lseg;->e:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    long-to-int p0, v0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p0, p0, -0x20

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

    :goto_b
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    mul-int/lit8 p0, p0, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    ushr-long/2addr v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    and-long/2addr v0, v2

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
.end method

.method public static b(Ljava/lang/String;II)I
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2a

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "precision too large"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    add-int/lit8 v3, v3, -0x30

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v3, 0xf423f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "invalid precision character"

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    int-to-char v3, v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

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

    :goto_12
    add-int/lit8 v1, p1, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    move v1, p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const/16 v4, 0xa

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, p0, p1, p2}, Lsgz;->b(Ljava/lang/String;Ljava/lang/String;II)Lsgz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    if-ne p1, p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    mul-int/lit8 v2, v2, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    goto/16 :goto_1

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v1, p2, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_1d
    const-string v0, "invalid precision"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-static {p2, p0, p1}, Lsgz;->a(Ljava/lang/String;Ljava/lang/String;I)Lsgz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p0, p1, p2}, Lsgz;->b(Ljava/lang/String;Ljava/lang/String;II)Lsgz;

    move-result-object p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v2, v0

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    :goto_27
    const v0, 0xb

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1, p0, v1}, Lsgz;->a(Ljava/lang/String;Ljava/lang/String;I)Lsgz;

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

    nop

    :goto_29
    const-string p2, "missing precision"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_2b
    const v1, 0x4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lt v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    if-le v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    :goto_30
    add-int/2addr v2, v3

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

    :goto_31
    if-eq p2, v1, :cond_6

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    return v0

    nop

    nop

    :goto_33
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    sget-object v0, Lseg;->a:Lseg;

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

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return p0

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lseg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

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
    and-int/lit16 p0, p0, 0x80

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
.end method

.method public final e(IZ)Z
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit8 p2, v0, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v3, 0x9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

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

    nop

    :goto_7
    move v1, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    :goto_d
    const/16 p2, 0x60

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p2, p1, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_1e

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    goto :goto_1c

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p2, p0, Lseg;->d:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    and-int/2addr v0, p2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_c

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    iget p0, p0, Lseg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    if-eq v0, p2, :cond_6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    const/4 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lseg;->c()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    not-int p1, p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    and-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    return v1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2b
    const v1, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2c
    iget v0, p0, Lseg;->b:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_c

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    if-ne p0, p1, :cond_8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    instance-of v1, p1, Lseg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget v1, p1, Lseg;->c:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_9
    if-eq p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

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

    :goto_b
    if-eq v1, v3, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget v3, p0, Lseg;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Lseg;->d:I

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

    :goto_13
    iget p0, p0, Lseg;->d:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p1, Lseg;->b:I

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

    :goto_15
    if-eq p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v3, p0, Lseg;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lseg;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/StringBuilder;)V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/2addr v2, v3

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

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lseg;->b:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

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

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lseg;->c()Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    and-int/lit16 v2, v0, -0x81

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lseg;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_a

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    :goto_1b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    shl-int/2addr v3, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lseg;->c:I

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

    nop

    :goto_1e
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    iget p0, p0, Lseg;->d:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    :goto_22
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    const/16 v0, 0x2e

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->bANUxWTHUL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    :goto_28
    if-le v3, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lseg;->d:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lseg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lseg;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method
