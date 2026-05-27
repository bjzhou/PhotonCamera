.class final Lle;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Llg;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 0

    iput-object p1, p0, Lle;->a:Llg;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lle;->a:Llg;

    invoke-virtual {v0}, Llg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lle;->a:Llg;

    invoke-virtual {v0}, Llg;->s()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lle;->a:Llg;

    invoke-virtual {v0}, Llg;->k()V

    return-void
.end method
