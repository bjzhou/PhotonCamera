.class final Lkhc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilr;


# instance fields
.field final synthetic a:Lkjj;

.field final synthetic b:J

.field final synthetic c:Lpro;

.field final synthetic d:Lprw;

.field final synthetic e:Lpol;

.field final synthetic f:Lpge;

.field final synthetic g:Lkjb;

.field final synthetic h:Lkhe;


# direct methods
.method public constructor <init>(Lkhe;Lkjj;JLpro;Lprw;Lpol;Lpge;Lkjb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkhc;->a:Lkjj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkhc;->h:Lkhe;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p6, p0, Lkhc;->d:Lprw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lkhc;->c:Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Lkhc;->f:Lpge;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p9, p0, Lkhc;->g:Lkjb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p3, p0, Lkhc;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iput-object p7, p0, Lkhc;->e:Lpol;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Linb;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lkhc;->d:Lprw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Lkhc;->h:Lkhe;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lkjb;->c(Lprw;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p1, v1, v2, v3}, Lqwy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-interface {p2, v0, p1, v1, p3}, Lkhf;->a(Lqwy;Lcom/google/googlex/gcam/YuvWriteView;Lprw;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lkhc;->g:Lkjb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Lkhc;->e:Lpol;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget-wide v1, p0, Lkhc;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lkhc;->c:Lpro;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lkhc;->f:Lpge;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iget-object p1, p0, Lkhc;->a:Lkjj;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v3, v3, Lkjj;->a:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lqwy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lkhc;->a:Lkjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Lpol;->l()V

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    iget-object p2, p2, Lkhe;->c:Lkhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
