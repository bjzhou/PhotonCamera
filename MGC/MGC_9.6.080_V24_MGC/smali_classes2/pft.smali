.class public final Lpft;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic h:I

.field private static final i:Ljava/nio/charset/Charset;

.field private static final j:[I


# instance fields
.field public final a:S

.field public final b:S

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:I


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lpft;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_7

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

    :goto_3
    iget p0, p0, Lpft;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xa

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

    :goto_1
    sget-object v1, Landroidx/wear/widget/xrA/fuyPMnCeXU;->uGEWaacBNFJ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x4

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
    const-string v0, "US-ASCII"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    aput v2, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    aput v1, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    aput v4, v0, v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    sput-object v0, Lpft;->i:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    :goto_10
    const v1, 0x17

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

    :goto_11
    sput-object v0, Lpft;->j:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_13
    new-array v0, v0, [I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput v4, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput v1, v0, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v4, 0x8

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

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    :goto_1c
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0xb

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

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    const v0, 0x20

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x3

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

    :goto_22
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x5

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

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public constructor <init>(SSIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p5, p0, Lpft;->c:Z

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lpft;->e:I

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
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-short p1, p0, Lpft;->a:S

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput p3, p0, Lpft;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lpft;->f:Ljava/lang/Object;

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

    :goto_8
    iput-short p2, p0, Lpft;->b:S

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
.end method

.method public static c(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "UNSIGNED_BYTE"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "RATIONAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string p0, "UNSIGNED_SHORT"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const-string p0, "UNSIGNED_LONG"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const-string p0, "UNSIGNED_RATIONAL"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_2

    nop

    nop

    :goto_8
    const-string p0, "UNDEFINED"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "ASCII"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "LONG"

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

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public static f(I)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    if-eq p0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_15

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-ne p0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_13
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_9

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p0, v1, :cond_5

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

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lpft;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lpft;->j:[I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    const v0, 0x1d

    nop

    goto/32 :goto_8

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget p0, v1, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-short p0, p0, Lpft;->b:S

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop
.end method

.method public final b(I)J
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Cannot get integer value from "

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    instance-of v1, v0, [B

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    check-cast v0, [B

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    aget-byte p0, v0, p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, [J

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

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-wide p0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    iget-short p0, p0, Lpft;->b:S

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lpft;->f:Ljava/lang/Object;

    nop

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

    :goto_19
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    instance-of v1, v0, [J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lpft;->c(S)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_3
    aget-wide v0, p0, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v1, p0, [I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    check-cast p0, [B

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    instance-of v1, p0, [B

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-eq v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/String;

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

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_37

    nop

    :goto_15
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v1, p0, Ljava/lang/String;

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

    :goto_18
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget p0, p0, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    array-length v0, p0

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

    :goto_2a
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_36

    nop

    nop

    :goto_2c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    instance-of v1, p0, [J

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

    :goto_2e
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    :goto_30
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lpft;->i:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    :goto_33
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_34
    const v0, 0x15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v0, v3, :cond_8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    aget-byte v1, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3a
    check-cast p0, [J

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

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

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

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
    const/4 p0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, p0, [Lpch;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    iget v2, p0, Lpft;->d:I

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

    nop

    :goto_2
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4
    check-cast p1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    instance-of v1, p0, [B

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    instance-of v1, p1, [Lpch;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-short v1, p1, Lpft;->a:S

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, [Lpch;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Lpft;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, [B

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lpft;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    iget-object p0, p1, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    :goto_1f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, [Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    iget-short v1, p1, Lpft;->b:S

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_24
    if-ne v1, v2, :cond_5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v1, p0, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    check-cast p1, [J

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_27
    return p0

    nop

    :goto_28
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    if-eq v1, v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_2a
    iget-object p1, p1, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_33

    nop

    nop

    :goto_2c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    return v0

    nop

    nop

    :goto_30
    goto/32 :goto_39

    nop

    nop

    :goto_31
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    :goto_32
    return p0

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    instance-of v1, p1, [J

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_37
    return v0

    nop

    nop

    :goto_38
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    :goto_3b
    if-eqz p0, :cond_a

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v1, :cond_b

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-short v2, p0, Lpft;->a:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    instance-of v1, p1, [B

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

    nop

    :goto_40
    instance-of v1, p1, Lpft;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_c

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

    :cond_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_43
    return v0

    nop

    :goto_44
    goto/32 :goto_1b

    nop

    nop

    :goto_45
    if-eqz p1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

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

    :goto_49
    iget-short v2, p0, Lpft;->b:S

    nop

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

    nop

    :goto_4a
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_e
    goto/32 :goto_9

    nop
.end method

.method public final g(I)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpft;->j([I)Z

    move-result p0

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
    filled-new-array {p1}, [I

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_d

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    aget-byte v3, p1, v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    add-int/lit8 v3, v0, -0x1

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

    :goto_9
    const/4 v3, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    :goto_c
    aput-byte v2, p1, v2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Lpft;->1a36313b7ed15ba14e0acb4da569b8b7m(I)Z

    move-result v1

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

    :goto_f
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    sget-object v0, Lpft;->i:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    array-length v0, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iget-short v0, p0, Lpft;->b:S

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    iget-short v0, p0, Lpft;->b:S

    nop

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

    :goto_16
    if-eq v0, v4, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    array-length v0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x16

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    iput v0, p0, Lpft;->d:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    new-array p1, v4, [B

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x18

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

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

    :goto_26
    iget v0, p0, Lpft;->d:I

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

    :goto_27
    if-ne v3, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-short v3, p0, Lpft;->b:S

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v0, v1, :cond_8

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

    :cond_8
    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-short v0, p0, Lpft;->a:S

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lpft;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

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

    :goto_3
    iget-boolean v0, p0, Lpft;->c:Z

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

    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lpft;->e:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

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

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lpft;->g:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-short v0, p0, Lpft;->b:S

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

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

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

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    :goto_16
    iget-object v6, p0, Lpft;->f:Ljava/lang/Object;

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

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i([B)Z
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    new-array v1, v0, [B

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v1, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    iput-object v1, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Lpft;->1a36313b7ed15ba14e0acb4da569b8b7m(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Lpft;->d:I

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

    :goto_15
    return v2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x16

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

    nop

    nop

    :goto_1a
    iget-short v1, p0, Lpft;->b:S

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    array-length v0, p1

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final j([I)Z
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    :goto_1
    const/4 v4, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    array-length v0, p1

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

    :goto_4
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    if-ne v1, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-gez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lpft;->f:Ljava/lang/Object;

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

    :goto_a
    if-lt v2, v1, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    :goto_b
    new-array v0, v0, [J

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_e
    aput-wide v3, v0, v2

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

    nop

    nop

    :goto_f
    if-ne v1, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v0}, Lpft;->1a36313b7ed15ba14e0acb4da569b8b7m(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_12
    move v1, v2

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    :goto_14
    iget-short v0, p0, Lpft;->b:S

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

    :goto_15
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

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

    :goto_18
    goto :goto_13

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    :goto_1a
    int-to-long v3, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_5

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    :goto_1d
    aget v3, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1e
    array-length v0, p1

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

    :goto_1f
    if-lt v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return p0

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    aget v3, p1, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    if-eq v0, v4, :cond_6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_7

    nop

    goto/32 :goto_37

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v1, v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    :goto_28
    if-lt v1, v0, :cond_9

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v1, v1, 0x1

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

    :goto_2a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    return v2

    nop

    :goto_2f
    goto/32 :goto_3d

    nop

    nop

    :goto_30
    const/4 v2, 0x0

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

    nop

    :goto_31
    iget-short v1, p0, Lpft;->b:S

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_32
    aget v1, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    iput v1, p0, Lpft;->d:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_34
    if-le v3, v5, :cond_a

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

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_35
    if-gez v3, :cond_b

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

    :cond_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_21

    nop

    :goto_39
    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    const v5, 0xffff

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

    nop

    :goto_3b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3d
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final k([J)Z
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v1, v3, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_1
    const v0, 0xd

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v3, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget-short v1, p0, Lpft;->b:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    if-gez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    array-length v0, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    cmp-long v5, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_23

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide v5, 0xffffffffL

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    array-length p1, p1

    nop

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

    :goto_10
    const/4 v3, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    invoke-direct {p0, v0}, Lpft;->1a36313b7ed15ba14e0acb4da569b8b7m(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    goto :goto_20

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    :goto_1b
    iput p1, p0, Lpft;->d:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    cmp-long v3, v3, v5

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

    :goto_1e
    goto/32 :goto_17

    nop

    :goto_1f
    return p0

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget-wide v3, p1, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l([Lpch;)Z
    .locals 11

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v3, v5, v7

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

    :goto_1
    if-eq v0, v4, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-ne v1, v3, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    :goto_4
    const-wide/32 v8, 0x7fffffff

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    iget-short v0, p0, Lpft;->b:S

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

    :goto_6
    goto/16 :goto_3f

    nop

    :goto_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    :goto_9
    const-wide/32 v6, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    iput p1, p0, Lpft;->d:I

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

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    const/4 p0, 0x1

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

    :goto_e
    if-lez v3, :cond_3

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

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_f
    const-wide/16 v7, 0x0

    nop

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

    :goto_10
    goto :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    cmp-long v6, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    if-gez v6, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long v9, v5, v7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Lpft;->1a36313b7ed15ba14e0acb4da569b8b7m(I)Z

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    array-length v0, p1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_19
    array-length p1, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v1, v2

    nop

    nop

    :goto_1b
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v9, v3, Lpch;->b:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    iget-short v1, p0, Lpft;->b:S

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v5, v3, Lpch;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    if-gez v9, :cond_6

    nop

    goto/32 :goto_7

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    :goto_24
    goto/32 :goto_2a

    nop

    nop

    :goto_25
    array-length v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    :goto_28
    if-lez v0, :cond_8

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

    :cond_8
    goto/32 :goto_29

    nop

    :goto_29
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long v3, v9, v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_7

    nop

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v4, v3, Lpch;->a:J

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

    :goto_30
    const v1, 0x4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_32
    return v2

    nop

    nop

    :goto_33
    goto/32 :goto_3b

    nop

    nop

    :goto_34
    const/16 v4, 0xa

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

    :goto_35
    if-eq v1, v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    const-wide v7, 0xffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_37
    iget-wide v6, v3, Lpch;->b:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    cmp-long v3, v4, v8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_39
    cmp-long v3, v6, v8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-object v3, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    iput-object p1, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3c
    if-lez v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    nop

    :goto_3d
    aget-object v3, p1, v1

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

    :goto_3e
    move v1, v2

    nop

    nop

    :goto_3f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_40
    if-lt v1, v0, :cond_b

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-gez v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    nop
.end method

.method public final m()[I
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, p0

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

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v1, p0, [J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v1, 0x12

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

    :goto_c
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

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
    goto/32 :goto_11

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, [J

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

    :goto_14
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-wide v2, p0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    array-length v2, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x13

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

    :goto_1c
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    :goto_1
    if-eq v5, v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v6, Lpft;->i:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v6, v4, [J

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Lpft;->d:I

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

    :goto_6
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_7
    if-nez v6, :cond_1

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

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->wBrhJo:Ljava/lang/String;

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

    :goto_9
    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_a
    iget-short v5, p0, Lpft;->b:S

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    iget-short v0, p0, Lpft;->a:S

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    array-length v5, v4

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

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_56

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v4, [B

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "ifd id: "

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

    :goto_18
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_15

    nop

    :goto_1b
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1c
    const/4 v8, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v6, v4, [B

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    :goto_26
    const v0, 0x1a

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

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_28
    new-instance v5, Ljava/lang/String;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_29
    iget-short p0, p0, Lpft;->b:S

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

    :goto_2a
    invoke-static {p0}, Lpft;->c(S)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    if-nez v6, :cond_4

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Lpft;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    const-string p0, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    const-string v5, ""

    nop

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

    :goto_32
    iget v1, p0, Lpft;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    iget v3, p0, Lpft;->g:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v4, [B

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2c

    nop

    nop

    :goto_38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_15

    nop

    nop

    :goto_3b
    goto/32 :goto_58

    nop

    nop

    :goto_3c
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_3d
    instance-of v6, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v4, :cond_5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_42
    array-length v6, v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aget-object v4, v4, v7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v0, "\ntype: "

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

    :goto_45
    goto/16 :goto_15

    nop

    nop

    :goto_46
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v4, [J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4a
    const-string p0, "\nvalue: "

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    :goto_4c
    const-string v1, "tag id: %04X\n"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_50
    if-eq v5, v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_53
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_54
    if-eq v6, v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_7
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_57
    check-cast v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_58
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    :goto_5a
    aget-wide v4, v4, v7

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

    :goto_5b
    if-nez v6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    :goto_5c
    const-string p0, "\ncount: "

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method
