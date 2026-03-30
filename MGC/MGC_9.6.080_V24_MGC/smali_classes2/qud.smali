.class public final Lqud;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lque;


# instance fields
.field private final b:Ljava/util/Random;

.field private final c:Lsrr;

.field private final d:Lqtq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lqub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    goto/32 :goto_7

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
    goto/32 :goto_8

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

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lqud;->a:Lque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Luqi;->a:Luqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2}, Lqub;-><init>(Luqi;Z)V

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Random;Lqtq;Lsrr;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqud;->b:Ljava/util/Random;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lqud;->d:Lqtq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqud;->c:Lsrr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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


# virtual methods
.method public final a(Luqi;)Lque;
    .locals 7

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqud;->b:Ljava/util/Random;

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

    nop

    :goto_1
    invoke-direct {v2, p1, v0, v1, p0}, Lquc;-><init>(Luqi;Ljava/util/Random;Lqtq;Lsrr;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lqub;

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
    if-ne v0, v3, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, v1}, Lqub;-><init>(Luqi;Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    move v1, v2

    nop

    :goto_6
    goto/32 :goto_3e

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

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

    :goto_8
    goto :goto_6

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_9

    nop

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

    nop

    :goto_d
    invoke-static {v0}, La;->L(I)I

    move-result v0

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

    :goto_e
    invoke-direct {v0, p1, v1}, Lqub;-><init>(Luqi;Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Luqi;->a:Luqi;

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v1, v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    const-wide/16 v5, 0x3e8

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    if-ne v0, v2, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v3, p1, Luqi;->c:J

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
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    :goto_19
    mul-double/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lqud;->c:Lsrr;

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

    :goto_1c
    const/4 p0, 0x5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lqub;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_11

    nop

    :goto_24
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    iget-object p0, p0, Lqud;->b:Ljava/util/Random;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    iget v0, p1, Luqi;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_22

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    return-object v0

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lqub;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2f
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object v2

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-wide v5, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v0, v1

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3d

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    :goto_38
    cmp-long v0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_39
    iget-wide v5, p1, Luqi;->c:J

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

    nop

    nop

    :goto_3a
    new-instance v2, Lquc;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3c
    if-ne v0, p0, :cond_6

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

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v0, v0, -0x1

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

    :goto_3e
    invoke-direct {p0, p1, v1}, Lqub;-><init>(Luqi;Z)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-ltz p0, :cond_7

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

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lqud;->d:Lqtq;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    cmpg-double p0, v3, v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    long-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop
.end method
