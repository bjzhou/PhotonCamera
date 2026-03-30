.class public final Lgui;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpaw;


# instance fields
.field private final a:Lgzn;

.field private final b:Lgoe;

.field private final c:Lpdf;


# direct methods
.method public constructor <init>(Lgzn;Lgoe;Lpdf;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgui;->a:Lgzn;

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

    nop

    :goto_2
    iput-object p2, p0, Lgui;->b:Lgoe;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lgui;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpag;Lrss;Loyn;Lozm;)Lpaf;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Lgui;->a:Lgzn;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    move-object v2, p3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v5}, Lgul;-><init>(Lpag;Loyn;Lgzn;Lgoe;Lpdf;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-object v5, p0, Lgui;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Lgul;

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_10
    iget-object v4, p0, Lgui;->b:Lgoe;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

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
.end method
