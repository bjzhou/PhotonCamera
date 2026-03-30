.class public final Lnhh;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lnbh;

.field final synthetic b:Laed;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:J


# direct methods
.method public constructor <init>(Lnbh;Laed;IIJJ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p7, p0, Lnhh;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnhh;->b:Laed;

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
    iput-object p1, p0, Lnhh;->a:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lnhh;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    iput p4, p0, Lnhh;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p5, p0, Lnhh;->e:J

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit8 p1, p1, 0xb

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lnhh;->b:Laed;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    if-eq p1, p2, :cond_0

    nop

    nop

    goto/32 :goto_1a

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

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Ljava/lang/Number;

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

    nop

    nop

    :goto_7
    const/4 v9, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-interface {v8}, Lblm;->H()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnhh;->a:Lnbh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v4, p0, Lnhh;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, p0, Lnhh;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

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

    nop

    :goto_10
    iget-wide v6, p0, Lnhh;->f:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_12
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-interface {v8}, Lblm;->s()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1a

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    check-cast v8, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    iget v2, p0, Lnhh;->c:I

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

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-static/range {v0 .. v9}, Lnzk;->aE(Lnbh;Laed;IIJJLblm;I)V

    :goto_21
    goto/32 :goto_2

    nop

    nop
.end method
