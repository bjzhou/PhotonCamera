.class public final Lbdi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;

.field public static final b:Lbhf;

.field public static final c:Lbhf;

.field public static final d:Lbhf;

.field private static final e:Lbdk;

.field private static final f:Lbdk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    new-instance v0, Lbhf;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v3, v1, v2, v4}, Lbhf;-><init>(FFFF)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lbdi;->b:Lbhf;

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

    :goto_4
    invoke-direct {v0, v2, v1, v3, v1}, Lbhf;-><init>(FFFF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lbdk;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const v2, 0x3d23d70a    # 0.04f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v1, v0}, Lbmx;-><init>(Lbqt;Luaz;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lbrg;->a:Lbrg;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lbhf;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x3e75c28f    # 0.24f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v3, v4, v1, v2}, Lbdk;-><init>(ZFJ)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lbdi;->c:Lbhf;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    sget-wide v1, Lcel;->f:J

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

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x1

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

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v4, 0x7fc00000    # Float.NaN

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

    :goto_19
    sget-object v0, Lbdh;->a:Lbdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v3, v1, v2, v1}, Lbhf;-><init>(FFFF)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lbhf;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    new-instance v2, Lbmx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sput-object v2, Lbdi;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    const v4, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    const v1, 0x3df5c28f    # 0.12f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v3, 0x3da3d70a    # 0.08f

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

    :goto_21
    invoke-direct {v0, v3, v4, v1, v2}, Lbdk;-><init>(ZFJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput-object v0, Lbdi;->e:Lbdk;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    new-instance v0, Lbdk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    sput-object v0, Lbdi;->d:Lbhf;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sput-object v0, Lbdi;->f:Lbdk;

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

    :goto_26
    const v2, 0x3e23d70a    # 0.16f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic a(FI)Lahq;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    move-object p0, p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

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

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    if-ne v3, p1, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

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

    nop

    :goto_8
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_9
    const/high16 v3, 0x7fc00000    # Float.NaN

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

    :goto_a
    new-instance p1, Lbdk;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    and-int/2addr p1, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lbdi;->f:Lbdk;

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

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v3}, Ldpe;->b(FF)Z

    move-result v0

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

    :goto_12
    if-nez p1, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    and-int/lit8 v0, p1, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    move p0, v3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    sget-wide v1, Lcel;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    sget-wide v4, Lcel;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2, v4, v5}, La;->q(JJ)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1, v3, p0, v1, v2}, Lbdk;-><init>(ZFJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    sget-object p0, Lbdi;->e:Lbdk;

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
.end method
