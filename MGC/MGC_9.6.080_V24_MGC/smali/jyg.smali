.class public final synthetic Ljyg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksx;


# instance fields
.field public final synthetic a:Lpdf;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Ljxy;


# direct methods
.method public synthetic constructor <init>(Lpdf;Ltxm;Ljxy;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljyg;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p3, p0, Ljyg;->c:Ljxy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljyg;->b:Ltxm;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p0}, Libn;->f(Libo;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object v1, p0, Ljyg;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    iget-object p0, p0, Ljyg;->c:Ljxy;

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

    :goto_6
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    check-cast v1, Libn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljyg;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

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

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "MICRO_GyroModule#stopGyroCapture"

    nop

    goto/32 :goto_d

    nop

    nop
.end method
