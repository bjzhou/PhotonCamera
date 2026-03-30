.class final Luhc;
.super Lufa;
.source "PG"


# instance fields
.field private final f:Luhf;


# direct methods
.method public constructor <init>(Ltzy;Luhf;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lufa;-><init>(Ltzy;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Luhc;->f:Luhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method protected final m()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, "AwaitContinuation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final n(Lugy;)Ljava/lang/Throwable;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Luhe;->d()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Luhf;->z()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    check-cast v0, Luhe;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lufi;

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

    nop

    nop

    :goto_7
    iget-object p0, p0, Luhc;->f:Luhf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lugy;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lufi;->b:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    instance-of v0, p0, Luhe;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

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

    :goto_11
    instance-of v0, p0, Lufi;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
