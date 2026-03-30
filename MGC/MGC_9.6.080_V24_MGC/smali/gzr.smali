.class final Lgzr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmti;


# instance fields
.field final synthetic a:Lmtj;

.field final synthetic b:Lgzs;


# direct methods
.method public constructor <init>(Lgzs;Lmtj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lgzr;->a:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lgzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lmtj;->a()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgzr;->b:Lgzs;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgzr;->a:Lmtj;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lgzs;->h()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->d(Landroid/content/Context;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lgzs;->c:Lrss;

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

    :goto_12
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_14
    iget-object v0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lgzs;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lgzs;->h:Lrss;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    iget-object v0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lgzs;->h:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    iget-object p0, p0, Lgzs;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    invoke-interface {v0}, Lmtj;->a()V

    goto/32 :goto_17

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lgzs;->b()V

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    nop
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lgzs;->c:Lrss;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lmtj;->m(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v0}, Lmtj;->m(I)V

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object p1, p0, Lgzr;->a:Lmtj;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lgzs;->f()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lgzr;->b:Lgzs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgzs;->f:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Lgzr;->b:Lgzs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
