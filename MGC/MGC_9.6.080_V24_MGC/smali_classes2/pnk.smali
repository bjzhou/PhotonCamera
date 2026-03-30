.class public final Lpnk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/media/ImageWriter;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/media/ImageWriter;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lpnk;->c:I

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
    invoke-virtual {p1}, Landroid/media/ImageWriter;->getMaxImages()I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v0

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

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/Object;

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

    :goto_7
    iput-object v0, p0, Lpnk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpnk;->b:Landroid/media/ImageWriter;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;J)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    throw p1

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/media/Image;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2, p3}, Landroid/media/Image;->setTimestamp(J)V

    iget-object p2, p0, Lpnk;->b:Landroid/media/ImageWriter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    new-instance p2, Lpfi;

    nop

    invoke-direct {p2, p1}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lpnk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpnk;->a:Ljava/lang/Object;

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

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpnk;->b:Landroid/media/ImageWriter;

    nop

    nop

    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, p0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget p0, p0, Lpnk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-static {p0}, Lpuq;->ba(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_f
    const-string v1, "format"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
