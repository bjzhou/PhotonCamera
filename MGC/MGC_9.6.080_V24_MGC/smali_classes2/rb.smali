.class public final Lrb;
.super Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.source "PG"


# instance fields
.field private final a:Lsd;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lueq;

.field private final d:Lueq;

.field private final e:Lst;

.field private final f:Lezz;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrb;->c:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lueq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lsx;->f()V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraExtensionSession;Lezz;)Lqw;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    check-cast v0, Lqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrb;->d:Lueq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v2

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lrb;->d:Lueq;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2, v2}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_14
    invoke-direct {v2, v0, p1, p2, v1}, Lqw;-><init>(Lsd;Landroid/hardware/camera2/CameraExtensionSession;Lezz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lrb;->a:Lsd;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lrb;->d:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lqw;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    :goto_1d
    iget-object v1, p0, Lrb;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public constructor <init>(Lsd;Lst;Lsx;Lezz;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lueq;

    nop

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

    nop

    :goto_1
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p3, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lrb;->c:Lueq;

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

    :goto_4
    invoke-direct {p2, p3, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lrb;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p2, p0, Lrb;->d:Lueq;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Lueq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lrb;->a:Lsd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lrb;->e:Lst;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lrb;->f:Lezz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p3, 0x0

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
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrb;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrb;->e:Lst;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lst;->f()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrb;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrb;->f:Lezz;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lrb;->e:Lst;

    nop

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

    nop

    :goto_5
    iget-object p1, p1, Lst;->a:Lsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v0}, Lrb;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraExtensionSession;Lezz;)Lqw;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lsp;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lsp;->i()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lrb;->e:Lst;

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

    :goto_2
    invoke-direct {p0, p1, v0}, Lrb;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraExtensionSession;Lezz;)Lqw;

    goto/32 :goto_1

    nop

    nop

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
    invoke-direct {p0}, Lrb;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Lst;->a:Lsp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrb;->f:Lezz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrb;->f:Lezz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    invoke-direct {p0}, Lrb;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lrb;->e:Lst;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v1, Lst;->a:Lsp;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-direct {p0, p1, v0}, Lrb;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/camera2/CameraExtensionSession;Lezz;)Lqw;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p1}, Lsp;->e(Lsc;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop
.end method
