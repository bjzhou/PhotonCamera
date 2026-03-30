.class final Lcot;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lcoj;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lcoj;Lubo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

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
    iput-object p1, p0, Lcot;->a:Lcoj;

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

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lcot;->b:Lubo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lblm;->l(Z)V

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p2, v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v1, -0x33d6b4f3    # -4.4379188E7f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v1}, Lblm;->v(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, p1, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Lblm;->o()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_24

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcot;->b:Lubo;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Lcoj;->a()Z

    move-result p2

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

    :goto_19
    invoke-interface {p1, v0}, Lblm;->K(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    const/4 v0, 0x2

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

    :goto_1b
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lblm;->q()V

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    and-int/lit8 p2, p2, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    const v0, 0x17

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    check-cast p1, Lblm;

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

    :goto_23
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    iget-object p2, p0, Lcot;->a:Lcoj;

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

    :goto_28
    invoke-interface {p1, p2}, Lblm;->D(Z)Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
