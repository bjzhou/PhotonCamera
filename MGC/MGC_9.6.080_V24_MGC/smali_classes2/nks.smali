.class public final Lnks;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lnbh;

.field final synthetic b:Luco;

.field final synthetic c:Lbob;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lnbh;Luco;Lbob;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnks;->c:Lbob;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p4, p0, Lnks;->d:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lnks;->b:Luco;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lnks;->a:Lnbh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnks;->c:Lbob;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lnks;->a:Lnbh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

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

    :goto_3
    iget v0, p0, Lnks;->d:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, p1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnks;->c:Lbob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnks;->b:Luco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, p1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnks;->b:Luco;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v1, p0, Luco;->a:Z

    nop

    nop

    goto/32 :goto_c

    nop

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
    goto/32 :goto_a

    nop

    nop

    :goto_19
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Luco;->a:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lnks;->a:Lnbh;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
