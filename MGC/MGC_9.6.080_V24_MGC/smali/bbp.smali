.class final Lbbp;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method public constructor <init>(Lbbr;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbbp;->a:Lbbr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1d

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

    :goto_1
    invoke-static {p0, v2}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbbp;->a:Lbbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lbau;->a:Lbox;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lbdi;->c:Lbhf;

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

    :goto_7
    sget-object v1, Lbbf;->a:Lbox;

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

    :goto_8
    sget-object p0, Lbdi;->b:Lbhf;

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

    :goto_9
    check-cast p0, Lbas;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    sget-object p0, Lbdi;->d:Lbhf;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    iget-wide v0, v0, Lcel;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lbbp;->a:Lbbr;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lbdg;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lbdi;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    iget-object p0, p0, Lbbp;->a:Lbbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v0, p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    if-gtz p0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x17

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Lcen;->a(J)F

    move-result p0

    nop

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

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_19
    check-cast v0, Lcel;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lbas;->m()Z

    move-result p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

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

    :goto_24
    cmpl-double p0, v0, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop
.end method
