.class public final Lqcv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqcn;


# instance fields
.field final synthetic a:Lrss;

.field final synthetic b:Landroid/content/Context;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lrss;Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqcv;->a:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqcv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lqcv;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Class;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lqcv;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p2, p1}, Lpuq;->U(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lqcv;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqcv;->b:Landroid/content/Context;

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

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lqcv;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p2

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

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p0, p1}, Lpuq;->U(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    check-cast p2, Ljava/lang/Class;

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

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p2, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p2, v1, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    :goto_1d
    iget-object p0, p0, Lqcv;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p2, p0, Lqcv;->a:Lrss;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x17

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    iget v0, p0, Lqcv;->c:I

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iget-object p2, p0, Lqcv;->a:Lrss;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqcv;->a:Lrss;

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

    :goto_6
    invoke-static {p2, p0, p1}, Lpuq;->V(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

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

    nop

    :goto_9
    check-cast p2, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lqcv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iget-object p2, p0, Lqcv;->a:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    iget-object p0, p0, Lqcv;->b:Landroid/content/Context;

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

    :goto_10
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-static {p0, p2, p1}, Lpuq;->V(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-nez p2, :cond_4

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

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
