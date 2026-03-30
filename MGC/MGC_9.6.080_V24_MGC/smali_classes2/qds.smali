.class public final synthetic Lqds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lqdv;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lqdv;JJ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p4, p0, Lqds;->c:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqds;->a:Lqdv;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p2, p0, Lqds;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iget-object v0, v0, Lqdv;->b:Lpsc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v1, p0, Lqds;->b:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

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

    :goto_5
    iget-wide v3, p0, Lqds;->c:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lqds;->a:Lqdv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    invoke-interface {v0, v1, v2, v3, v4}, Lpsc;->f(JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
