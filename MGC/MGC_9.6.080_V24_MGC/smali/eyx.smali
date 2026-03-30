.class public final synthetic Leyx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Leyx;->b:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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

    :goto_3
    iput-object p1, p0, Leyx;->a:Lcom/airbnb/lottie/LottieAnimationView;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Leyx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-static {p0, v0, v1}, Lezg;->d(Landroid/content/Context;ILjava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    iget-object p0, p0, Leyx;->a:Lcom/airbnb/lottie/LottieAnimationView;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v0}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object p0

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

    :goto_15
    const v0, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
