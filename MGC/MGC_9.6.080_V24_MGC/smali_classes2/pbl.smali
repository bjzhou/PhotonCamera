.class final Lpbl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lpah;

.field final synthetic b:Lpbp;


# direct methods
.method public constructor <init>(Lpbp;Lpah;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpbl;->a:Lpah;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpbl;->b:Lpbp;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lpbp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpbl;->b:Lpbp;

    nop

    nop

    nop

    nop

    iget v1, v1, Lpbp;->c:I

    nop

    const/4 v2, 0x1

    nop

    if-ne v1, v2, :cond_1

    nop

    goto :goto_5

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Lrrf;->x(Z)V

    iget-object v1, p0, Lpbl;->b:Lpbp;

    nop

    nop

    nop

    iget-object v1, v1, Lpbp;->b:Lpbj;

    nop

    nop

    nop

    new-instance v2, Lpbk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Lpbk;-><init>(Lpbl;)V

    invoke-interface {v1, v2}, Lpbj;->s(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lpbl;->b:Lpbp;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpbp;->b:Lpbj;

    nop

    nop

    invoke-interface {v1}, Lpbj;->B()V

    iget-object v1, p0, Lpbl;->b:Lpbp;

    nop

    nop

    iget-object v2, v1, Lpbp;->d:Lgtu;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpbp;->b:Lpbj;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpbj;->a()Landroid/media/MediaRecorder;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lgtu;->b(Landroid/media/AudioRouting;)V

    :cond_2
    iget-object p0, p0, Lpbl;->b:Lpbp;

    nop

    nop

    const/4 v1, 0x2

    nop

    iput v1, p0, Lpbp;->c:I

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lpbl;->b:Lpbp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0x1c

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
.end method
