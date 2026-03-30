.class public final Ltfc;
.super Ltdx;
.source "PG"


# static fields
.field public static final a:Ltdy;


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Ltdx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    sput-object v0, Ltfc;->a:Ltdy;

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
    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ltfg;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ltfg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

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
.end method

.method public constructor <init>(Ltdx;Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ltfc;->c:Ltdx;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Ltfz;-><init>(Ltdx;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltfz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ltfc;->b:Ljava/lang/Class;

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

    :goto_5
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lthn;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Ltfc;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lthn;->l()V

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Ltfc;->c:Ltdx;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    :goto_11
    const v1, 0x20

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Ltfc;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    check-cast p0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lthn;->r()Z

    move-result v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
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

    :goto_21
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_23
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lthn;->n()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Ltfc;->b:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_9

    nop

    nop

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
