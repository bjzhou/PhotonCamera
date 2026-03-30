.class final Lsdt;
.super Lsdw;
.source "PG"


# instance fields
.field final synthetic a:Lsdw;

.field final synthetic b:Lsdw;


# direct methods
.method public constructor <init>(Lsdw;Lsdw;)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    iput-object p2, p0, Lsdt;->b:Lsdw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lsdw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsdt;->a:Lsdw;

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
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsdt;->a:Lsdw;

    nop

    invoke-virtual {v0}, Lsdw;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lsdw;->a()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lsdt;->b:Lsdw;

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

    :goto_4
    invoke-virtual {p0}, Lsdw;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsdt;->b:Lsdw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
