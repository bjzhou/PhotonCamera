.class public final Lknf;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lmhz;


# direct methods
.method public constructor <init>(Lmhz;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lknf;->a:Lmhz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lknf;->a:Lmhz;

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

    nop

    :goto_3
    iget-object p0, p0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
