.class final Lril;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field final synthetic a:Lrij;

.field final synthetic b:Lrim;


# direct methods
.method public constructor <init>(Lrim;Lrij;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iput-object p2, p0, Lril;->a:Lrij;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lril;->b:Lrim;

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lrij;->ah()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lril;->a:Lrij;

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
    iget-object v0, p0, Lril;->b:Lrim;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrik;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onBackInvoked()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lril;->a:Lrij;

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

    :goto_1
    invoke-interface {p0}, Lrij;->aj()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lril;->b:Lrim;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lril;->a:Lrij;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lms;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-virtual {v0}, Lrik;->d()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Lms;-><init>(Landroid/window/BackEvent;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v0}, Lrij;->ar(Lms;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lms;-><init>(Landroid/window/BackEvent;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lrij;->ap(Lms;)V

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object p0, p0, Lril;->a:Lrij;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrik;->d()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Lril;->b:Lrim;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lms;

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
.end method
