.class public final Ljyc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljvy;


# instance fields
.field volatile a:J

.field final synthetic b:Ljvz;

.field final synthetic c:Lrss;


# direct methods
.method public constructor <init>(Ljvz;Lrss;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljyc;->b:Ljvz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljyc;->c:Lrss;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Ljyc;->a:J

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

    :goto_3
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(J)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Ljyc;->a:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    iget-object p1, p0, Ljyc;->b:Ljvz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-interface {p1, v0, v1}, Lhta;->e(J)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ljyc;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lhta;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide p1, p0, Ljyc;->a:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v0, p0, Ljyc;->a:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v0, v1}, Ljvz;->f(J)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

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

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_16
    check-cast p1, Ljava/lang/Long;

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

    :goto_17
    goto/16 :goto_6

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
