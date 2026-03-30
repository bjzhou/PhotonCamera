.class public final Lftp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lftq;


# instance fields
.field final synthetic a:Lftq;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lftq;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lftp;->a:Lftq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lftp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lftp;->a:Lftq;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lftq;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    new-array v1, v1, [Ljava/lang/Object;

    nop

    const/4 v3, 0x0

    nop

    nop

    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x392

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lftp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lftp;->b:Ljava/lang/Object;

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

    :goto_9
    iget-object p0, p0, Lftp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
