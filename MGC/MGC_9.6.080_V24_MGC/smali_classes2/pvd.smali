.class public final synthetic Lpvd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqt;


# instance fields
.field public final synthetic a:Lpve;


# direct methods
.method public synthetic constructor <init>(Lpve;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpvd;->a:Lpve;

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

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a(Loqy;)V
    .locals 1

    goto/32 :goto_10

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

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Loqy;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lssk;->cancel(Z)Z

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpvd;->a:Lpve;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Loqy;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lpve;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, v0, Lorb;->c:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lpve;->e(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lorb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Loqy;->c()Ljava/lang/Exception;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, p1

    nop

    nop

    goto/32 :goto_e

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
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
