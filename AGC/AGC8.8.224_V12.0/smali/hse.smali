.class public final Lhse;
.super Lmo;


# static fields
.field public static final synthetic z:I


# instance fields
.field public final s:Landroid/widget/TextView;

.field public final t:Landroid/widget/TextView;

.field public final u:[Landroid/view/View;

.field public final v:Landroid/view/View;

.field public final w:Landroid/widget/LinearLayout;

.field public final x:Landroid/widget/HorizontalScrollView;

.field public y:Lhsa;


# direct methods
.method public constructor <init>(Landroid/view/View;[Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lmo;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lhse;->a:Landroid/view/View;

    const v0, 0x7f0b039e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lhse;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lhse;->a:Landroid/view/View;

    const v0, 0x7f0b036c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lhse;->t:Landroid/widget/TextView;

    iput-object p2, p0, Lhse;->u:[Landroid/view/View;

    iget-object p1, p0, Lhse;->a:Landroid/view/View;

    const p2, 0x7f0b0081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lhse;->v:Landroid/view/View;

    iget-object p1, p0, Lhse;->a:Landroid/view/View;

    const p2, 0x7f0b0144

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lhse;->w:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lhse;->a:Landroid/view/View;

    const p2, 0x7f0b0143

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lhse;->x:Landroid/widget/HorizontalScrollView;

    return-void
.end method
