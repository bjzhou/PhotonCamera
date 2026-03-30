.class public final Lluq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ltxm;

.field public final c:Ljava/lang/Class;

.field public d:Llun;

.field public final e:Llyv;

.field private final f:Z

.field private final g:Landroid/app/Activity;

.field private final h:Landroid/app/KeyguardManager;

.field private final i:Lfdn;


# direct methods
.method public constructor <init>(Lfdn;Landroid/app/Activity;Ltxm;ZLjava/lang/Class;Landroid/app/KeyguardManager;Llyv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput-object p1, p0, Lluq;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Lluq;->h:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-boolean p4, p0, Lluq;->f:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Lluq;->e:Llyv;

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

    nop

    :goto_7
    iput-object p3, p0, Lluq;->b:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lluq;->g:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lluq;->i:Lfdn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    iput-object p5, p0, Lluq;->c:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Ljdc;->j(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Llun;->r()V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lluq;->d:Llun;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lluq;->b:Ltxm;

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

    :goto_9
    iget v0, v0, Ljdc;->h:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lluo;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto/32 :goto_13

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    iget-object v0, p0, Lluq;->h:Landroid/app/KeyguardManager;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lluq;->b:Ltxm;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lluq;->h:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    check-cast v1, Ljdc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ljdc;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    :goto_23
    invoke-direct {v2, p0, v0, p2}, Lluo;-><init>(Lluq;ILandroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Llun;->p()V

    :goto_25
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lluq;->d:Llun;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Lluq;->f:Z

    nop

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

    :goto_28
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, p1}, Lluq;->da190e616797844b591057d0190e7728m(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lluq;->f:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lluq;->g:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Intent;Z)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Llup;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lluq;->da190e616797844b591057d0190e7728m(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lluq;->g:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lluq;->i:Lfdn;

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

    :goto_6
    invoke-direct {v0, p0, p2, p1}, Llup;-><init>(Lluq;ZLandroid/content/Intent;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lfdn;->i(Landroid/content/Intent;)V

    goto/32 :goto_2

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

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lluq;->f:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lluq;->b(Landroid/content/Intent;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
