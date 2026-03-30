.class final Lawg;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lawf;

.field final synthetic b:Lubp;


# direct methods
.method public constructor <init>(Lawf;Lubp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lawg;->a:Lawf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

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
    const/4 p1, 0x2

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

    :goto_4
    iput-object p2, p0, Lawg;->b:Lubp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lbxe;->a:Lbox;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v4, 0xc00

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lblm;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    if-eq p2, v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_20

    nop

    nop

    :goto_5
    invoke-interface {p2, p0, p1, v0}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    new-array v1, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p2, v1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    :goto_d
    iput-object v2, v1, Lbwx;->c:Lbxa;

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

    :goto_e
    invoke-interface {p1}, Lblm;->o()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, -0x2f73363d

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v2, Lbwx;->a:Lbxf;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    invoke-static {v1, v2, v3, p1, v4}, Lbwm;->b([Ljava/lang/Object;Lbxf;Luaz;Lblm;I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    iget-object p2, p2, Lawf;->b:Lbob;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1, v0}, Lblm;->v(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lbwy;->a:Lbwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_20
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p2, p0, Lawg;->b:Lubp;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Lbwx;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    check-cast v2, Lbxa;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    const v1, 0x7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lawg;->a:Lawf;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_27
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, p0, Lawg;->a:Lawf;

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

    :goto_2c
    invoke-interface {p1, v2}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop
.end method
