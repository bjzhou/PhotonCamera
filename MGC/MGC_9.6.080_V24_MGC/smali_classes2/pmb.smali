.class public final Lpmb;
.super Lpmm;
.source "PG"


# instance fields
.field public final a:Loxv;

.field public final b:J


# direct methods
.method public constructor <init>(Lphj;Lpnx;Lpck;IZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p5}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p5}, Lpmm;-><init>(Lphj;Lpnx;Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-wide p3, p0, Lpmb;->b:J

    nop

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

    :goto_5
    invoke-static {p4, p3}, Lpuq;->aZ(ILpck;)J

    move-result-wide p3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Loxv;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-object p2, p0, Lpmb;->a:Loxv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p1, Lphj;->c:Lrss;

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

    :goto_b
    new-instance p2, Loxv;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    sget-object p5, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Lpmb;->h:Lphj;

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

    :goto_2
    iget p0, p0, Lphj;->e:I

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

    nop
.end method

.method public final b()Lpck;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lphj;->d:Lpck;

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

    :goto_1
    iget-object p0, p0, Lpmb;->h:Lphj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final e(Landroid/view/Surface;)V
    .locals 2

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

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lrsa;->a:Lrsa;

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

    :goto_8
    iget-object p0, p0, Lpmb;->a:Loxv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lrss;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpmb;->a:Loxv;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    const v1, 0x1e

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    iget-object v0, p0, Lpmb;->a:Loxv;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const v1, 0x9

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lpmb;->b:J

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

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final h()Landroid/view/Surface;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    check-cast p0, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrss;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    check-cast p0, Lrss;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpmb;->a:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final i()Lphm;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lphj;->a:Lphm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpmb;->h:Lphj;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()Lryb;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    sget-object p0, Lsbh;->a:Lryb;

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

    :goto_2
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
