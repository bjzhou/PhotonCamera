.class final Lbev;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lubo;Lubo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbev;->a:Lubo;

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

    :goto_3
    const/4 p1, 0x2

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

    :goto_4
    iput-object p2, p0, Lbev;->b:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p2}, Lblm;->v(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_c

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    iget-object p0, p0, Lbev;->a:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

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

    :goto_6
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, p2}, Lblm;->v(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p0, Lbev;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ljava/lang/Number;

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

    :goto_b
    invoke-interface {p1}, Lblm;->o()V

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lbev;->a:Lubo;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lblm;->o()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    check-cast p1, Lblm;

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

    :goto_13
    invoke-static {p2, p0, p1, v0}, Lbfh;->a(Lubo;Lubo;Lblm;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const p2, 0x6e5398c7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1, v0}, Lbfh;->b(Lubo;Lblm;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-eq p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p2, :cond_2

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

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lbev;->b:Lubo;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const p2, 0x6e538841

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
