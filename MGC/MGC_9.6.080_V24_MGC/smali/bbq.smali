.class final Lbbq;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method public constructor <init>(Lbbr;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

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
    iput-object p1, p0, Lbbq;->a:Lbbr;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcrz;->I(Lcrw;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lbbo;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lbbq;->a:Lbbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lbdi;->a:Lbox;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    iget-boolean v3, p0, Lbbr;->b:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-object p0, p0, Lbbq;->a:Lbbr;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Lbbo;-><init>(Lbbr;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lbbq;->a:Lbbr;

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

    :goto_d
    goto/16 :goto_20

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lcrz;->H(Lcrw;)V

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lbbr;->a:Lanz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    iget v4, p0, Lbbr;->c:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    check-cast v0, Lbdg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Lbbp;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v5, Lbht;->a:Laed;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    const v0, 0xf

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lbbr;->e:Lcrw;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lbbr;->e:Lcrw;

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    iget-object v0, p0, Lbbr;->e:Lcrw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3, v4, v0, v1}, Lbhx;->a(Lanz;ZFLceo;Luaz;)Lcrw;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Lbbr;->e:Lcrw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1, p0}, Lbbp;-><init>(Lbbr;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, v1}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
