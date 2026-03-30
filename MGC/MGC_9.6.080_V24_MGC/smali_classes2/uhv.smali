.class public final Luhv;
.super Ljava/util/concurrent/CancellationException;
.source "PG"

# interfaces
.implements Lufm;


# instance fields
.field public final transient a:Lugy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lugy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Luhv;->a:Lugy;

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

    :goto_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Throwable;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Luhv;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const-string v1, ""

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Luhv;->a:Lugy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2}, Luhv;-><init>(Ljava/lang/String;Lugy;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    const v1, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    new-instance v0, Luhv;

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

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Luhv;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop
.end method
