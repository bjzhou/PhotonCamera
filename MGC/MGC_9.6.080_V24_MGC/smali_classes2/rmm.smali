.class public final Lrmm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public c:Lke;

.field public d:Z

.field public e:Lrmk;

.field public f:Lrmb;

.field public g:Lkg;

.field private final h:Lrmj;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lrmj;)V
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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p3, p0, Lrmm;->h:Lrmj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrmm;->c:Lke;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->e()Lrmf;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->k(Lrmf;)V

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, p0, Lrmm;->h:Lrmj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_11
    iget-object v0, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->j()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_27

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    :goto_17
    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->b()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    :goto_1e
    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lrmf;Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lke;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    iget-object p0, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v4, v3, v2}, Lrmj;->a(Lrmf;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    :goto_28
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->d(I)Lrmf;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method
