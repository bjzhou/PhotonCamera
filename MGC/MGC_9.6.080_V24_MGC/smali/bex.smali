.class final Lbex;
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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lbex;->b:Lubo;

    nop

    goto/32 :goto_0

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
    iput-object p1, p0, Lbex;->a:Lubo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p0, p1, v0}, Lbmf;->a(Lboy;Lubo;Lblm;I)V

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    const p0, 0x739851bc

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lbex;->a:Lubo;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    const/16 v0, 0x38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lblm;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, v0}, Lbox;->c(Ljava/lang/Object;)Lboy;

    move-result-object p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

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

    nop

    :goto_d
    goto :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const v1, 0x3f5eb852    # 0.87f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p1}, Lbbb;->a(FFLblm;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-static {p0, v1, p1}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lbex;->b:Lubo;

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

    :goto_1b
    if-eq p2, v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v0, p0}, Lbew;-><init>(Lubo;Lubo;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lbew;

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

    nop

    :goto_21
    goto/32 :goto_16

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_17

    nop

    nop

    :goto_26
    sget-object p2, Lbbd;->a:Lbox;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
