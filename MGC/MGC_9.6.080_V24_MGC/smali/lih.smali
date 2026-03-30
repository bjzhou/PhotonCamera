.class public final Llih;
.super Llhz;
.source "PG"


# instance fields
.field final a:Lsuu;

.field final b:Lsuu;

.field final synthetic c:Llii;


# direct methods
.method public constructor <init>(Llii;Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llih;->b:Lsuu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llih;->c:Llii;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p2, p3, p4, p5}, Llhz;-><init>(Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Llih;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lsuu;

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

    :goto_7
    new-instance p1, Lsuu;

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

    :goto_8
    return-void

    nop
.end method


# virtual methods
.method public final a(Liku;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Llih;->b:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final c(Lpge;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xe9b

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "Frame %s rejected."

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

    nop

    :goto_7
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    check-cast p0, Lscz;

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

    :goto_a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    invoke-interface {v0, p1}, Lljp;->a(Lpge;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-super {p0, p1}, Llhz;->c(Lpge;)V

    goto/32 :goto_15

    nop

    nop

    :goto_f
    const v1, 0x9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-interface {p0, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Llii;->d:Lljp;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    iget-object v0, p0, Llih;->c:Llii;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop
.end method
