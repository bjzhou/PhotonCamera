.class public final Lolq;
.super Lohe;
.source "PG"

# interfaces
.implements Lohi;


# static fields
.field private static final a:Lolx;

.field private static final l:Lnar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lolp;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v0, 0x14

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lnar;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lolq;->a:Lolx;

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

    :goto_a
    invoke-direct {v0}, Lolp;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v0, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    const-string v2, "ClientTelemetry.API"

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

    :goto_f
    sput-object v1, Lolq;->l:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    const v1, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lolj;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lohd;->a:Lohd;

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
    invoke-direct {p0, p1, v0, p2, v1}, Lohe;-><init>(Landroid/content/Context;Lnar;Logy;Lohd;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lolq;->l:Lnar;

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

    :goto_9
    const v0, 0x20

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

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    const v1, 0x1a

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Loli;)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p1, v3}, Lolo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Loji;->b()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lohe;->j(Lojj;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    sget-object v2, Lofy;->a:Logb;

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

    :goto_8
    aput-object v2, v1, v3

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

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iput-object v1, v0, Loji;->b:[Logb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lolo;

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

    :goto_e
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Loji;

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

    nop

    :goto_10
    const/4 v1, 0x1

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    iput-object v1, v0, Loji;->a:Lojf;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    new-array v1, v1, [Logb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-direct {v0}, Loji;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Loji;->a()Lojj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
