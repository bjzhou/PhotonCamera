.class public final Lfyg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksl;


# instance fields
.field private final a:Lfxj;

.field private final b:Lsui;

.field private final c:Lksl;


# direct methods
.method public constructor <init>(Lksl;Lfxj;Lsui;)V
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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfyg;->c:Lksl;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfyg;->a:Lfxj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p3, p0, Lfyg;->b:Lsui;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lfyg;->a:Lfxj;

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
    new-instance v0, Lfyf;

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

    :goto_2
    iget-object p0, p0, Lfyg;->b:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {v1, p1}, Lksl;->a(Llko;)Lksk;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v2, p0, p1}, Lfyf;-><init>(Lfxj;Lsui;Lksk;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfyg;->c:Lksl;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Llko;)Lksk;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_5
    iget-object v0, p0, Lfyg;->c:Lksl;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    invoke-interface {v0, p1}, Lksl;->b(Llko;)Lksk;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfyg;->b:Lsui;

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

    :goto_e
    new-instance v1, Lfyf;

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

    :goto_f
    invoke-direct {v1, v0, p0, p1}, Lfyf;-><init>(Lfxj;Lsui;Lksk;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const v1, 0x1c

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

    :goto_11
    iget-object v0, p0, Lfyg;->a:Lfxj;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
