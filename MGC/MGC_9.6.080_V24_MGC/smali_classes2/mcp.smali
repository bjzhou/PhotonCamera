.class public final synthetic Lmcp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgv;


# instance fields
.field public final synthetic a:Lmdk;

.field public final synthetic b:Lphh;


# direct methods
.method public synthetic constructor <init>(Lmdk;Lphh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmcp;->b:Lphh;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lmcp;->a:Lmdk;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

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

    nop

    :goto_6
    iget-object p0, p0, Lmdk;->c:Lowu;

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

    nop

    :goto_7
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    new-instance v1, Lmde;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p0, v0}, Lmde;-><init>(Lmdk;Lprw;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmcp;->b:Lphh;

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lmcp;->a:Lmdk;

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
.end method
