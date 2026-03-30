.class final Lplk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprs;


# instance fields
.field final synthetic a:Lpjz;

.field final synthetic b:Lprj;

.field final synthetic c:Lpll;

.field final synthetic d:Lplm;


# direct methods
.method public constructor <init>(Lplm;Lpjz;Lprj;Lpll;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lplk;->d:Lplm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lplk;->a:Lpjz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lplk;->c:Lpll;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p3, p0, Lplk;->b:Lprj;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Unable to submit the reprocessing request. Final ownership lost."

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    :try_start_0
    iget-object v0, p0, Lplk;->d:Lplm;

    nop

    iget-object v0, v0, Lplm;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v1, "Submitting the input image to input processor. image="

    nop

    invoke-static {p1, v1}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lplk;->d:Lplm;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lplm;->c:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lpkp;

    nop

    new-instance v1, Lpng;

    nop

    nop

    move-object v2, p1

    nop

    check-cast v2, Landroid/media/Image;

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lpng;-><init>(Landroid/media/Image;)V

    iget-object v0, v0, Lpkp;->a:Lpnk;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, v1, Lpng;->d:J

    nop

    iget-object v4, v0, Lpnk;->a:Ljava/lang/Object;

    nop

    nop

    monitor-enter v4

    nop

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Landroid/media/Image;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    iget-object v0, v0, Lpnk;->b:Landroid/media/ImageWriter;

    nop

    invoke-virtual {v0, v5}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v1}, Lprw;->close()V

    iget-object v0, p0, Lplk;->d:Lplm;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lplk;->b:Lprj;

    nop

    nop

    nop

    iget-object v2, p0, Lplk;->c:Lpll;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lplk;->a:Lpjz;

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Lplm;->l(Lpjz;Lpll;)Z

    move-result v3

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, v4, v3}, Lplm;->f(Lprj;Lpll;ZZ)I

    iget-object v0, p0, Lplk;->d:Lplm;

    nop

    iget-object v0, v0, Lplm;->b:Lpcu;

    nop

    const-string v1, "Submitted the capture request for reprocessing."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Lplm;->i(Lpjz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Landroid/media/Image;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lplm;->b:Lpcu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lplk;->d:Lplm;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_e
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_5
    new-instance v1, Lpfi;

    nop

    invoke-direct {v1, v0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    nop

    nop
    :try_end_6
    .catch Lpfi; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lplm;->b:Lpcu;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lplk;->d:Lplm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lplk;->a:Lpjz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    iget-object p1, p0, Lplk;->d:Lplm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    const-string v2, "Failed to submit image for reprocessing. "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
