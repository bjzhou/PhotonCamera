.class final Lbct;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(JLubo;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lbct;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p3, p0, Lbct;->b:Lubo;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    and-int/lit8 p2, p2, 0x3

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    check-cast p1, Lblm;

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
    sget-object p2, Lbbd;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-static {p2, p0, p1, v0}, Lbmf;->a(Lboy;Lubo;Lblm;I)V

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Lbox;->c(Ljava/lang/Object;)Lboy;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v0, p1}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const/16 v0, 0x38

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Lbcs;-><init>(Lubo;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    if-eq p2, v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lbct;->b:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    iget-wide v0, p0, Lbct;->a:J

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

    :goto_18
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const p0, 0x6f544777

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

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

    :goto_1c
    goto :goto_19

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1}, Lcel;->a(J)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_23
    new-instance v0, Lbcs;

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

    :goto_24
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    goto/32 :goto_0

    nop

    nop
.end method
