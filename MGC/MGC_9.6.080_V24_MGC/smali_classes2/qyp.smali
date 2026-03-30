.class public final synthetic Lqyp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqyu;


# instance fields
.field public final synthetic a:Lrss;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ltxm;

.field public final synthetic d:Lrss;

.field public final synthetic e:Lqro;


# direct methods
.method public synthetic constructor <init>(Lqro;Lrss;Landroid/content/Context;Ltxm;Lrss;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lqyp;->a:Lrss;

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

    :goto_2
    iput-object p4, p0, Lqyp;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqyp;->e:Lqro;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lqyp;->d:Lrss;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p3, p0, Lqyp;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    nop

    nop

    nop

    :goto_9
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lqyp;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    :goto_f
    const v0, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object v0, p0, Lqyp;->a:Lrss;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqyp;->b:Landroid/content/Context;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_14
    invoke-direct {v2, p0, v1, v0}, Lqyq;-><init>(Landroid/app/Application;Ltxm;Lrss;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

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

    :goto_16
    invoke-interface {v0, v2}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Landroid/app/Application;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lqyp;->d:Lrss;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    check-cast v0, Lrsk;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lqro;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lqyp;->e:Lqro;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_24
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    new-instance v2, Lqyq;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
