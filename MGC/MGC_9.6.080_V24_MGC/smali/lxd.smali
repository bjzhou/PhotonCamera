.class public final synthetic Llxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Lpdf;

.field public final synthetic b:Llxp;

.field public final synthetic c:Lptf;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lhdn;


# direct methods
.method public synthetic constructor <init>(Lpdf;Llxp;Lhdn;Lptf;Ljava/lang/String;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Llxd;->c:Lptf;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Llxd;->a:Lpdf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Llxd;->f:Lhdn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-wide p6, p0, Llxd;->e:J

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

    :goto_5
    iput-object p2, p0, Llxd;->b:Llxp;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Llxd;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llxd;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget-object v2, p0, Llxd;->f:Lhdn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v3, p0, Llxd;->e:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, p0, v1, v3, v4}, Lhdn;->M(Lptf;Ljava/lang/String;J)Lpsk;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Llxd;->c:Lptf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v1, p0, Llxd;->b:Llxp;

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

    nop

    :goto_9
    check-cast v1, Lptf;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v6}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "Initialize MediaGroup"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    sget-object v5, Llxp;->b:Llxp;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v1, v5, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1, p0, v3, v4}, Lhdn;->M(Lptf;Ljava/lang/String;J)Lpsk;

    move-result-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-static {v6}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    goto :goto_16

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget v0, Llxg;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    iget-object v6, p0, Llxd;->d:Ljava/lang/String;

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

    :goto_1e
    iget-object v1, v2, Lhdn;->c:Ljava/lang/Object;

    nop

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
.end method
