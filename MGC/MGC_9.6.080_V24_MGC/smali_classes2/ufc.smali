.class public final Lufc;
.super Lufi;
.source "PG"


# instance fields
.field public final a:Luen;


# direct methods
.method public constructor <init>(Ltzy;Ljava/lang/Throwable;Z)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1
    new-instance p2, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lufc;->a:Luen;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const-string v0, "Continuation "

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-direct {p2, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, p3, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const/4 p3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p2, Luen;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-direct {p0, p2, p3}, Lufi;-><init>(Ljava/lang/Throwable;Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_14
    const-string v1, " was cancelled normally"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
