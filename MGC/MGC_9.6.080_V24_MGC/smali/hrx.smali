.class public final Lhrx;
.super Landroid/preference/Preference;
.source "PG"


# instance fields
.field public a:Landroid/widget/SearchView;

.field public b:Landroid/widget/SearchView$OnQueryTextListener;

.field public c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhrx;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-string p1, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "layout_inflater"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_2
    iput-object v0, p0, Lhrx;->a:Landroid/widget/SearchView;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhrx;->a:Landroid/widget/SearchView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/widget/SearchView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-direct {v3, p0, v2}, Lhrw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v0, 0x7f0b03e8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhrx;->a:Landroid/widget/SearchView;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhrx;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    new-instance v3, Lhrw;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lhrx;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x7f0e0133

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
