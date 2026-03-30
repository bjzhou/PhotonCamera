.class public Lrik;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public a(Lrij;)Landroid/window/OnBackInvokedCallback;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

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

    :goto_2
    invoke-direct {p0, p1, v0}, Llv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Llv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public b(Lrij;Landroid/view/View;Z)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0xf4240

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrik;->a(Lrij;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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
    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-ne p0, p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

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

    :goto_c
    iput-object p1, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_10

    nop

    nop

    nop

    :goto_e
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2, p0, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :catchall_0
    :goto_10
    goto/32 :goto_6

    nop

    nop
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

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

    :goto_4
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    :goto_7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method final d()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrik;->a:Landroid/window/OnBackInvokedCallback;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop
.end method
