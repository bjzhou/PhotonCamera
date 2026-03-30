.class public final Lnry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprz;


# instance fields
.field private final a:Lprz;

.field private final b:Lnrv;


# direct methods
.method public constructor <init>(Lprz;Lnrv;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnry;->a:Lprz;

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnry;->b:Lnrv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final a(Lpry;)Lpsb;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lnrz;

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

    :goto_2
    iget-object p0, p0, Lnry;->b:Lnrv;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnry;->a:Lprz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p1, p0}, Lnrz;-><init>(Lpsb;Lnrv;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    nop

    :goto_b
    invoke-interface {v0, p1}, Lprz;->a(Lpry;)Lpsb;

    move-result-object p1

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

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
