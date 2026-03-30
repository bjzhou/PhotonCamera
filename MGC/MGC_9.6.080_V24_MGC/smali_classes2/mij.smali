.class public final Lmij;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnScrollChangeListener;
.implements Lmsd;


# instance fields
.field public final a:Lmse;

.field public final b:Landroid/content/Context;

.field public c:Lmir;

.field public d:Lmir;

.field public e:Z

.field public final f:Lhoh;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private i:I

.field private final j:Llyv;

.field private final k:Lnar;


# direct methods
.method public constructor <init>(Lmse;Landroid/content/Context;Lnar;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Llyv;Lhoh;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lmij;->i:I

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

    nop

    nop

    :goto_1
    iput-object p4, p0, Lmij;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p6, p0, Lmij;->j:Llyv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object p5, p0, Lmij;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Lmij;->f:Lhoh;

    nop

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

    nop

    :goto_7
    iput-object p1, p0, Lmij;->a:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lmij;->k:Lnar;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lmij;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lmij;->e:Z

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
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lmij;->i:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lmij;->i:I

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

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
    iput-boolean v0, p0, Lmij;->e:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final b()V
    .locals 15

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {v3 .. v9}, Lmse;->q(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;Lrss;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    const-string v0, "https://www.gstatic.com/aiux/gca/cocktailparty/test_sample10_on.mp4"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lmij;->d:Lmir;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v7 .. v14}, Lmir;-><init>(Lmtj;Landroid/net/Uri;Landroid/content/Context;Lnar;Lmij;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    check-cast v8, Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lmir;

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

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v5, 0x7f14064b

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lmir;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmij;->j:Llyv;

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

    :goto_13
    iget-object v11, p0, Lmij;->k:Lnar;

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

    nop

    nop

    :goto_14
    sget-object v1, Llyr;->S:Llze;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lmir;->h()V

    goto/32 :goto_38

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_18
    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v14, p0, Lmij;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lmir;->h()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v13, p0, Lmij;->g:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    iput-object p0, v3, Lmse;->d:Lmsd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "https://www.gstatic.com/aiux/gca/cocktailparty/test_sample10_off.mp4"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v8, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    iget-object v3, p0, Lmij;->a:Lmse;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v10, p0, Lmij;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    check-cast v8, Lmtj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    move-object v12, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x7f0b044c

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p0, v3, Lmse;->e:Landroid/view/View$OnScrollChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v14, p0, Lmij;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v11, p0, Lmij;->k:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lmij;->c:Lmir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object v7, p0

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

    :goto_32
    invoke-direct/range {v7 .. v14}, Lmir;-><init>(Lmtj;Landroid/net/Uri;Landroid/content/Context;Lnar;Lmij;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto/32 :goto_6

    nop

    nop

    :goto_33
    iget-object v13, p0, Lmij;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x7f0e0156

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_35
    iget-object v10, p0, Lmij;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_36
    move-object v8, v0

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

    :goto_37
    const/16 v4, 0xa

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_38
    const v0, 0x7f0b044a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v2, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmij;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmij;->d:Lmir;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lmij;->c:Lmir;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lmir;->f()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_6
    invoke-virtual {p0}, Lmir;->f()V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmij;->a:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmse;->e:Landroid/view/View$OnScrollChangeListener;

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

    :goto_4
    iput-object p1, p0, Lmse;->d:Lmsd;

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

.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-boolean p2, p0, Lmij;->e:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    new-instance p2, Lmiv;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p0, p1, p3}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-eq p2, p3, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_8
    const/4 p3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p2, p0, Lmij;->i:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const-wide/16 p3, 0xfa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
