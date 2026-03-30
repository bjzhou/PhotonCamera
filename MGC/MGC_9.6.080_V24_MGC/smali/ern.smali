.class final Lern;
.super Luar;
.source "PG"

# interfaces
.implements Lubq;


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field synthetic c:J


# direct methods
.method public constructor <init>(Ltzy;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, p1}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p0, p3, Lern;->c:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p3, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lujq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p3, p4}, Lern;-><init>(Ltzy;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p4, Ltzy;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-object p2, p3, Lern;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Throwable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p3, p0}, Lern;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p3, Lern;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const-string v5, "Cannot check for unfinished work"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-long/2addr v3, v5

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lerp;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lern;->a:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Throwable;

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

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_15

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    const-wide/16 v5, 0x7530

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v2, p0, Lern;->a:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3, v4, p0}, Lufv;->d(JLtzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    iget-wide v3, p0, Lern;->c:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    sget-wide v5, Lerp;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_8

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lern;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method
