.class final Ljek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljfx;


# instance fields
.field final synthetic a:Ljfx;

.field final synthetic b:I

.field final synthetic c:Ljel;


# direct methods
.method public constructor <init>(Ljel;Ljfx;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljek;->a:Ljfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Ljek;->c:Ljel;

    nop

    goto/32 :goto_3

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
    iput p3, p0, Ljek;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ltcv;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljfx;->b(Ltcv;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljek;->a:Ljfx;

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

    :goto_2
    return-void

    nop

    nop
.end method

.method public final e(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljek;->c:Ljel;

    nop

    iget-object v0, v0, Ljel;->f:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    iget p0, p0, Ljek;->b:I

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p1, v0}, Ljfx;->e(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Ljek;->a:Ljfx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Ljek;->c:Ljel;

    nop

    goto/32 :goto_0

    nop

    nop
.end method
