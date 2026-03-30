.class public final Lqar;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_3
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;[C)V
    .locals 9

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v7, p2}, Llwi;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Lolx;->ae(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x0

    nop

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

    :goto_4
    new-instance v7, Llwi;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    move-object v0, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v8}, Loey;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lofi;Loez;Loff;Lrtm;Lqar;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v4, Lofi;->a:Lofi;

    nop

    nop

    nop

    goto/32 :goto_16

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

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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
    goto/32 :goto_18

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    new-instance v8, Lqar;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-direct {v8, p2, p2}, Lqar;-><init>([B[B)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "ICING"

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

    :goto_17
    new-instance p2, Loey;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    sget-object p2, Loey;->m:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lpwh;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    new-instance v0, Lhdh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p1, v1}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

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

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0x10

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
.end method

.method public constructor <init>(Lrss;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lrss;->f()Ljava/lang/Object;

    move-result-object p1

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

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lpuk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lqar;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Landroid/content/ContentValues;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_2

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
    sget-object p1, Lttz;->e:Lttz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Lofc;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x1

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

    :goto_6
    invoke-static {p2}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-direct {p2, p1}, Lofc;-><init>(Lttz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    invoke-direct {p1, v0}, Lrpz;-><init>([C)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lrpz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpwi;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

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
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast p0, Lpwi;

    nop

    nop

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
.end method

.method public final b(Ljava/lang/Throwable;I)Lpwe;
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    instance-of p0, p1, Locg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    instance-of v0, p1, Locu;

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

    :goto_4
    check-cast v0, Locu;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, v0, Locs;->b:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lpwf;

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

    :goto_7
    const v1, 0xd

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

    :goto_8
    sget-object p0, Lpwe;->c:Lpwe;

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

    :goto_9
    move-object v0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

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

    :goto_b
    invoke-interface {v0, p1}, Lpyg;->a(Ljava/lang/Throwable;)Lpwe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

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

    :goto_e
    invoke-virtual {p0, p1, p2}, Lqar;->b(Ljava/lang/Throwable;I)Lpwe;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p2, p2, 0x1

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

    :goto_12
    sget-object p0, Lpwe;->g:Lpwe;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    instance-of v0, p1, Lpwf;

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

    :goto_14
    if-ge p2, v0, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    iget-object p0, p1, Lpwf;->a:Lpwe;

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

    :goto_21
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_2a

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Locu;->a:Locs;

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

    :goto_26
    goto :goto_19

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    if-eq v0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_30

    nop

    nop

    :goto_2c
    goto/32 :goto_1f

    nop

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lpwe;->c:Lpwe;

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

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Lpwe;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_32
    return-object p0

    nop

    :goto_33
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Lpwe;->p:Lpwe;

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
.end method

.method public final c()Lptl;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const v1, 0x1

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

    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Lptl;-><init>(Landroid/content/ContentValues;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Landroid/content/ContentValues;

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

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    invoke-direct {v1, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lptl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_4

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

    :goto_1
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast p0, Landroid/content/ContentValues;

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
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/content/ContentValues;

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

.method public final f()Lqfv;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    check-cast v1, Lqes;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    new-instance v1, Lqew;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0, v1}, Lqfs;->a(Ljava/util/concurrent/Executor;Lqeu;)Lqfs;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-interface {v1}, Lqes;->a()Lqfv;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

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
    goto :goto_17

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lqfv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    invoke-static {v0}, Lqoe;->F(Ljava/lang/Iterable;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Lqew;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Lqfv;-><init>(Lqfs;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(Ledi;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_8

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    instance-of v0, p1, Ledr;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    instance-of v0, p1, Ledq;

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    instance-of v0, p1, Leds;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Leds;

    nop

    nop

    nop

    nop

    iget-wide v2, v0, Leds;->a:J

    nop

    nop

    nop

    const-wide v4, 0xffffffffL

    nop

    cmp-long v2, v2, v4

    nop

    nop

    nop

    if-gtz v2, :cond_0

    nop

    nop

    nop

    iget-wide v2, v0, Leds;->b:J

    nop

    nop

    nop

    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_0
    instance-of v0, p1, Ledp;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    check-cast v0, Ledp;

    nop

    nop

    nop

    iget v0, v0, Ledp;->d:I

    nop

    nop

    nop

    if-eq v0, v1, :cond_3

    nop

    nop

    const/16 v2, 0x17

    nop

    nop

    nop

    nop

    if-ne v0, v2, :cond_1

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_1
    instance-of v0, p1, Ledv;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :cond_3
    :goto_7
    iget-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    const-string v2, "Unsupported metadata"

    nop

    nop

    nop

    invoke-static {v1, v2}, Ldvz;->e(ZLjava/lang/Object;)V

    check-cast v0, Lhwy;

    nop

    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Leea;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Leea;->a(Ledi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop
.end method

.method public final declared-synchronized h()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lhwy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhwy;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

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

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized i(ILandroid/media/MediaFormat;)Leee;
    .locals 11

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    :catch_0
    :try_start_0
    const-string v1, "frame-rate"

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, v0, Lede;->k:F

    nop

    nop

    nop

    nop

    nop

    const-string v1, "width"

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    iput v1, v0, Lede;->i:I

    nop

    nop

    nop

    nop

    nop

    const-string v1, "height"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    iput v1, v0, Lede;->j:I

    nop

    const-string v1, "sar-width"

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    const-string v1, "sar-height"

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    const-string v1, "sar-width"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    nop

    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    const-string v6, "sar-height"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    div-float v6, v1, v6

    nop

    :cond_0
    iput v6, v0, Lede;->m:F

    nop

    nop

    const-string v1, "max-input-size"

    nop

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    iput v1, v0, Lede;->g:I

    nop

    nop

    nop

    nop

    nop

    const-string v1, "rotation-degrees"

    nop

    nop

    invoke-static {p2, v1, v2}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lede;->l:I

    nop

    sget-object v1, Ledo;->a:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    const-string v1, "color-standard"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    const-string v6, "color-range"

    nop

    nop

    invoke-static {p2, v6, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    const-string v7, "color-transfer"

    nop

    nop

    nop

    nop

    invoke-static {p2, v7, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v7

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    sget-object v8, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->NEsEJI:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p2, v8}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    if-eqz v8, :cond_1

    nop

    nop

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    nop

    nop

    nop

    new-array v9, v9, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    nop

    nop

    nop

    :cond_1
    move-object v9, v4

    nop

    nop

    :goto_3
    if-ne v1, v5, :cond_4

    nop

    if-ne v6, v5, :cond_3

    nop

    nop

    nop

    nop

    if-ne v7, v5, :cond_2

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    nop

    move v1, v5

    nop

    nop

    nop

    nop

    move v6, v1

    nop

    nop

    nop

    move v7, v6

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    move v1, v5

    nop

    nop

    nop

    move v6, v1

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_4
    new-instance v4, Ledd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v6, v7, v9}, Ledd;-><init>(III[B)V

    :cond_5
    iput-object v4, v0, Lede;->n:Ledd;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "sample-rate"

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    iput v1, v0, Lede;->p:I

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->TTiMFsZK:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    iput v1, v0, Lede;->o:I

    nop

    nop

    nop

    nop

    const-string v1, "pcm-encoding"

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    nop

    iput v1, v0, Lede;->q:I

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lrxw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lrxw;-><init>()V

    :goto_5
    const-string v4, "csd-"

    nop

    nop

    nop

    nop

    invoke-static {v2, v4}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object p2

    nop

    iput-object p2, v0, Lede;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Ledf;

    nop

    nop

    invoke-direct {p2, v0}, Ledf;-><init>(Lede;)V

    iget-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lhwy;

    nop

    iget-object v0, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Leec;

    nop

    iget-boolean v1, v1, Leec;->d:Z

    nop

    nop

    new-instance v2, Leee;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p2, p1, v1}, Leee;-><init>(Ledf;IZ)V

    move-object p1, v0

    nop

    nop

    nop

    check-cast p1, Leec;

    nop

    nop

    iget-object p1, p1, Leec;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lvl;

    nop

    nop

    nop

    invoke-direct {p1, v3}, Lvl;-><init>(I)V

    check-cast v0, Leec;

    nop

    nop

    nop

    nop

    iget-object p2, v0, Leec;->e:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_6
    const v0, 0xa

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

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_6

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

    :cond_6
    :try_start_1
    const-string v1, "frame-rate"

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c11ec0a -> :sswitch_5
        -0x3a5bd08a -> :sswitch_4
        -0x22f81362 -> :sswitch_3
        -0x19cc8eac -> :sswitch_2
        -0x19cc8eab -> :sswitch_1
        0xb26c537 -> :sswitch_0
    .end sparse-switch

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    return-object v2

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    nop

    nop

    nop

    nop

    new-array v5, v5, [B

    nop

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Lrxw;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    new-instance v0, Lede;

    nop

    nop

    invoke-direct {v0}, Lede;-><init>()V

    const-string v1, "mime"

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    sget-object v2, Ledj;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    move-object v1, v4

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-static {v1}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    nop

    const/4 v7, 0x5

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_11

    nop

    nop

    nop

    :sswitch_0
    const-string v6, "audio/mp3"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    if-eqz v6, :cond_9

    nop

    move v6, v10

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :sswitch_1
    const-string v6, "audio/mpeg-l2"

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    move v6, v7

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :sswitch_2
    const-string v6, "audio/mpeg-l1"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    move v6, v3

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    const-string v6, "audio/x-wav"

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    move v6, v9

    nop

    goto :goto_12

    nop

    nop

    nop

    :sswitch_4
    const-string v6, "application/x-mpegurl"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    move v6, v8

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    :sswitch_5
    const-string v6, "audio/x-flac"

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    move v6, v2

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :goto_11
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v6, :cond_f

    nop

    nop

    if-eq v6, v10, :cond_e

    nop

    if-eq v6, v9, :cond_d

    nop

    nop

    nop

    nop

    if-eq v6, v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    if-eq v6, v3, :cond_b

    nop

    nop

    nop

    nop

    if-eq v6, v7, :cond_a

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_a
    const-string v1, "audio/mpeg-L2"

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_b
    const-string v1, "audio/mpeg-L1"

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_c
    const-string v1, "application/x-mpegURL"

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_d
    const-string v1, "audio/wav"

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_e
    const-string v1, "audio/mpeg"

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_f
    const-string v1, "audio/flac"

    nop

    nop

    nop

    :goto_13
    iput-object v1, v0, Lede;->f:Ljava/lang/String;

    nop

    const-string v1, "language"

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    iput-object v1, v0, Lede;->b:Ljava/lang/String;

    nop

    nop

    nop

    const-string v1, "max-bitrate"

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    iput v1, v0, Lede;->d:I

    nop

    nop

    nop

    nop

    nop

    const-string v1, "bitrate"

    nop

    nop

    invoke-static {p2, v1, v5}, Ldwa;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lede;->c:I

    nop

    nop

    nop

    nop

    nop

    const-string v1, "mime"

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    const-string v6, "video/3gpp"

    nop

    invoke-static {v1, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->escC:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    nop

    const-string v1, "level"

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    if-eqz v1, :cond_10

    nop

    const-string v1, "profile"

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    const-string v6, "level"

    nop

    nop

    nop

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    sget-object v7, Ledk;->a:Ljava/util/regex/Pattern;

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v6, "s263.%d.%d"

    nop

    nop

    invoke-static {v6, v1}, Ledo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    :cond_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->VftCsoUqcMslP:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_11

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_11
    move-object v1, v4

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, v0, Lede;->e:Ljava/lang/String;

    nop

    nop

    nop

    const-string v1, "frame-rate"

    nop

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    if-lez v0, :cond_12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_c

    nop
.end method

.method public final declared-synchronized j(Leee;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    instance-of v1, p1, Leee;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ldvz;->f(Z)V

    iget-object v1, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lhwy;

    nop

    nop

    nop

    iget-object v2, v2, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_9

    nop

    nop

    check-cast v1, Lhwy;

    nop

    nop

    iget-object v1, v1, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    iget-wide v2, p1, Leee;->i:J

    nop

    nop

    nop

    nop

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v2, v4

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    move v2, v3

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_0
    const/4 v2, 0x0

    nop

    :goto_3
    const-string v4, "Samples can not be written after writing a sample with MediaCodec.BUFFER_FLAG_END_OF_STREAM flag"

    nop

    nop

    invoke-static {v2, v4}, Ldvz;->e(ZLjava/lang/Object;)V

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    goto/16 :goto_5

    nop

    :cond_1
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v2, v3

    nop

    if-lez v2, :cond_2

    nop

    nop

    nop

    nop

    iput-boolean v3, p1, Leee;->h:Z

    nop

    :cond_2
    iget-boolean v2, p1, Leee;->h:Z

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    iget-object v2, p1, Leee;->a:Ledf;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ledf;->g:Ljava/lang/String;

    nop

    nop

    invoke-static {v2}, Ledj;->d(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    :cond_3
    iget-boolean v2, p1, Leee;->j:Z

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    nop

    nop

    nop

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    nop

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_4

    nop

    nop

    :cond_4
    move-object v2, p2

    nop

    nop

    nop

    move-object p2, p3

    nop

    nop

    nop

    :goto_4
    iget-object v3, p1, Leee;->f:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v3, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p1, Leee;->g:Ljava/util/Deque;

    nop

    nop

    invoke-interface {p1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_6

    nop

    :cond_5
    :goto_5
    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 p2, p2, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    iput-wide v2, p1, Leee;->i:J

    nop

    nop

    :cond_6
    :goto_6
    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Leec;

    nop

    iget-object p1, p1, Leec;->e:Ljava/util/List;

    nop

    nop

    nop

    move-object p2, v1

    nop

    nop

    nop

    check-cast p2, Leec;

    nop

    nop

    invoke-virtual {p2, p1}, Leec;->e(Ljava/util/List;)Z

    move-result p1

    nop

    nop

    nop

    nop

    move-object p2, v1

    nop

    check-cast p2, Leec;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Leec;->f:Ljava/util/List;

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Leec;

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Leec;->e(Ljava/util/List;)Z

    if-eqz p1, :cond_7

    nop

    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Leec;

    nop

    nop

    nop

    nop

    nop

    iget-boolean p1, p1, Leec;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    check-cast v1, Leec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Leec;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

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

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const-string v0, "Failed to write sample for presentationTimeUs="

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    const/4 p1, 0x0

    nop

    :try_start_2
    throw p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    new-instance p2, Leed;

    nop

    nop

    nop

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p3, p1}, Leed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p1

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final k(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lkjj;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrpl;->f(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lssw;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lkjj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrpl;->b(Lssw;)Lssw;

    move-result-object p1

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
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

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

.method public final m(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lstn;

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
    check-cast p0, Lrpz;

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
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrpl;->f(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Lstn;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final n(Lssw;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    check-cast p0, Lstn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lstn;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lrpl;->b(Lssw;)Lssw;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lrpz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    iget-object p0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final o(Lpwn;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x3f0

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Lqar;->p(ILpwn;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final p(ILpwn;)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget v3, p2, Lpwn;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object v6, p2, Lpwn;->t:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface/range {v0 .. v6}, Lqbn;->k(ILjava/lang/String;IJLjava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iget-wide v4, p2, Lpwn;->s:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object v2, p2, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    move v1, p1

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
.end method
