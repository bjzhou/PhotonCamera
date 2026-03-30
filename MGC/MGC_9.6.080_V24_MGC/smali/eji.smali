.class final Leji;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lwu;

.field final synthetic b:Lejp;


# direct methods
.method public constructor <init>(Lejp;Lwu;)V
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

    :goto_1
    iput-object p1, p0, Leji;->b:Lejp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Leji;->a:Lwu;

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
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lejp;->i:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Lyo;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leji;->b:Lejp;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Leji;->a:Lwu;

    nop

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Leji;->b:Lejp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lejp;->i:Ljava/util/ArrayList;

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

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method
