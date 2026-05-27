.class final Lhpp;
.super Lacl;


# instance fields
.field final synthetic a:Lhpq;


# direct methods
.method public constructor <init>(Lhpq;)V
    .locals 0

    iput-object p1, p0, Lhpp;->a:Lhpq;

    invoke-direct {p0}, Lacl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lhpp;->a:Lhpq;

    iget-object v0, v0, Lhpq;->M:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
